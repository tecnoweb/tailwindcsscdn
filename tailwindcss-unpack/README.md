# Tailwind CSS CDN Unpack (3.4.17)

Questo repository contiene una copia "unpacked" dello script distribuito da <https://cdn.tailwindcss.com/3.4.17>. Lo scopo è permetterti di autopubblicare il file su una tua CDN, su npm/unpkg o semplicemente versionarlo in maniera controllata dopo gli eventi recenti.

## Contenuto
- `tailwindcss-3.4.17.js`: file originale scaricato dalla CDN ufficiale.
- `checksums.txt`: hash `sha256` per validare il file.
- `package.json`: metadati pronti per `npm publish` (aggiorna `author`, `repository`, ecc.).
- `LICENSE`: licenza MIT coerente con Tailwind CSS.

## Verifica integrità
```bash
npm run verify
# oppure
sha256sum --check checksums.txt
```
L'hash attuale è:
```
176e894661aa9cdc9a5cba6c720044cbbf7b8bd80d1c9a142a7c24b1b6c50d15  tailwindcss-3.4.17.js
```

## Utilizzo locale
Inserisci lo script nel tuo HTML per avere Tailwind client-side senza uscire dalla tua infrastruttura:
```html
<script src="/path/to/tailwindcss-3.4.17.js"></script>
<script>
  tailwind.config = {
    theme: {
      extend: {}
    }
  }
</script>
```

## Pubblicazione su npm/unpkg
1. Aggiorna i campi mancanti in `package.json` (`author`, `repository`, eventuale `publishConfig`).
2. Esegui `npm install` (non necessario, ma crea il lock file se lo vuoi nel repo).
3. Autenticati su npm ed esegui `npm publish --access public`.
4. Dopo la pubblicazione potrai usare URL come `https://unpkg.com/tailwindcss-cdn-unpack@3.4.17/tailwindcss-3.4.17.js`.

## Aggiornare la versione della CDN
1. Modifica `VERSION=3.4.xx` e scarica il nuovo file:
   ```bash
   VERSION=3.4.17
   curl -L "https://cdn.tailwindcss.com/${VERSION}" -o "tailwindcss-${VERSION}.js"
   ```
2. Aggiorna `checksums.txt` e `package.json`.
3. Commit + tag per tracciare ogni release.
