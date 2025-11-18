import { mkdir, writeFile } from 'node:fs/promises';
import https from 'node:https';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { createHash } from 'node:crypto';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const requestedVersion = process.argv[2] ?? process.env.TAILWIND_VERSION ?? '3.4.17';
const versionPattern = /^\d+\.\d+\.\d+$/;

if (!versionPattern.test(requestedVersion)) {
  console.error(`Version non valida: "${requestedVersion}". Usa il formato semantico x.y.z`);
  process.exit(1);
}

const sourceUrl = `https://cdn.tailwindcss.com/${requestedVersion}`;
const distDir = path.resolve(__dirname, '..', 'dist');
const targetFile = path.join(distDir, `tailwindcss-cdn-${requestedVersion}.js`);
const metadataFile = path.join(distDir, 'metadata.json');

function download(url) {
  return new Promise((resolve, reject) => {
    https.get(url, res => {
      if (res.statusCode && res.statusCode >= 300 && res.statusCode < 400 && res.headers.location) {
        return download(res.headers.location).then(resolve, reject);
      }

      if (res.statusCode !== 200) {
        reject(new Error(`Download fallito (${res.statusCode}): ${url}`));
        return;
      }

      const chunks = [];
      res.on('data', chunk => chunks.push(chunk));
      res.on('end', () => resolve(Buffer.concat(chunks)));
    }).on('error', reject);
  });
}

const now = () => new Date().toISOString();

try {
  await mkdir(distDir, { recursive: true });
  const buffer = await download(sourceUrl);
  await writeFile(targetFile, buffer);
  const sha256 = createHash('sha256').update(buffer).digest('hex');

  const metadata = {
    version: requestedVersion,
    source: sourceUrl,
    sha256,
    fetchedAt: now()
  };
  await writeFile(metadataFile, JSON.stringify(metadata, null, 2) + '\n');
  console.log(`Scaricato ${sourceUrl}`);
  console.log(`→ File: ${path.relative(process.cwd(), targetFile)}`);
  console.log(`→ SHA-256: ${sha256}`);
} catch (error) {
  console.error(error.message ?? error);
  process.exit(1);
}
