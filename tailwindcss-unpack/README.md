# Tailwind CSS CDN Unpacked 3.4.17

Repository pensato per avere una copia "self-hosted" dello script ufficiale distribuito da `https://cdn.tailwindcss.com/3.4.17`. Puoi pubblicare questo pacchetto su npm e poi servirlo tramite unpkg/jsDelivr o semplicemente inserirlo in un tuo bucket/static hosting per rimuovere la dipendenza dal CDN di terze parti.

## Contenuto
- `dist/tailwindcss-cdn-3.4.17.js`: file identico a quello fornito dal CDN ufficiale.
- `dist/metadata.json`: sorgente, checksum e timestamp del download.
- `scripts/fetch-cdn.mjs`: utility Node.js per riscaricare una versione specifica in caso di update.

## Utilizzo rapido
1. Pubblica il pacchetto su npm (`npm publish`).
2. Servilo da unpkg usando ad esempio:
   ```html
   <script src="https://unpkg.com/tailwindcss-cdn-unpack@3.4.17/dist/tailwindcss-cdn-3.4.17.js"></script>
   ```
   oppure da jsDelivr:
   ```html
   <script src="https://cdn.jsdelivr.net/npm/tailwindcss-cdn-unpack@3.4.17/dist/tailwindcss-cdn-3.4.17.js"></script>
   ```
3. Se preferisci host locale, copia `dist/tailwindcss-cdn-3.4.17.js` sul tuo server e includilo direttamente.

## Aggiornare il mirror
```bash
npm install # se vuoi sfruttare gli script da package.json
npm run fetch:cdn -- 3.4.18 # scarica una nuova versione
```
Lo script accetta anche la variabile `TAILWIND_VERSION`. Ogni esecuzione rigenera sia il file JS sia `dist/metadata.json` con il relativo checksum.

## Verifica integrità
```bash
sha256sum dist/tailwindcss-cdn-3.4.17.js
# deve restituire 176e894661aa9cdc9a5cba6c720044cbbf7b8bd80d1c9a142a7c24b1b6c50d15
```

## Note legali
Tailwind CSS è distribuito con licenza MIT. Mantieni il rispetto della licenza originale quando redistribuisci questo file.
