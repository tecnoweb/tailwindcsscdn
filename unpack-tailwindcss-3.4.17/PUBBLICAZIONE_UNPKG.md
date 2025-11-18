# 📦 Come Pubblicare su unpkg.com

**unpkg.com** serve automaticamente i pacchetti pubblicati su **npm**. Quindi per pubblicare su unpkg, devi prima pubblicare su npm.

## 🎯 Processo Completo

### Passo 1: Crea un account npm

1. Vai su [npmjs.com](https://www.npmjs.com)
2. Clicca su **"Sign Up"**
3. Compila il form con:
   - Username (sarà il tuo scope, es: `@tuousername`)
   - Email
   - Password
4. Verifica l'email

### Passo 2: Accedi da terminale

```bash
cd unpack-tailwindcss-3.4.17
npm login
```

Inserisci:
- Username
- Password
- Email

### Passo 3: Verifica/Cambia il nome del pacchetto

**IMPORTANTE**: Il nome del pacchetto deve essere UNICO su npm!

Apri `package.json` e modifica il nome. Esempi:

```json
{
  "name": "@tuousername/unpack-tailwindcss-3.4.17",
  // oppure
  "name": "unpack-tailwindcss-3-4-17",
  // oppure
  "name": "tailwindcss-3-4-17-unpacked"
}
```

**⚠️ Controlla che il nome non esista già:**
```bash
npm search unpack-tailwindcss
# oppure visita: https://www.npmjs.com/search?q=unpack-tailwindcss
```

### Passo 4: Verifica package.json

Assicurati che `package.json` sia completo:

```json
{
  "name": "@tuousername/unpack-tailwindcss-3.4.17",
  "version": "3.4.17",
  "description": "Unpacked version of TailwindCSS 3.4.17 from CDN and unpkg",
  "main": "dist/tailwindcss-3.4.17.js",
  "files": [
    "dist/",
    "README.md"
  ],
  "keywords": [
    "tailwindcss",
    "css",
    "framework",
    "utility-first",
    "cdn",
    "unpack"
  ],
  "author": "Tuo Nome <tua@email.com>",
  "license": "MIT",
  "repository": {
    "type": "git",
    "url": "https://github.com/TUO_USERNAME/unpack-tailwindcss-3.4.17.git"
  },
  "homepage": "https://github.com/TUO_USERNAME/unpack-tailwindcss-3.4.17#readme"
}
```

### Passo 5: Pubblica su npm

```bash
npm publish --access public
```

Se usi uno scope (nome che inizia con `@`), devi sempre aggiungere `--access public`:
```bash
npm publish --access public
```

Se NON usi scope, puoi semplicemente:
```bash
npm publish
```

### Passo 6: Verifica su unpkg.com

Dopo la pubblicazione (può richiedere qualche minuto), il pacchetto sarà disponibile su:

```
https://unpkg.com/@tuousername/unpack-tailwindcss-3.4.17@3.4.17/dist/tailwindcss-3.4.17.js
```

Oppure senza versione (ultima versione):
```
https://unpkg.com/@tuousername/unpack-tailwindcss-3.4.17/dist/tailwindcss-3.4.17.js
```

---

## 🔍 Come Funziona unpkg.com

unpkg.com serve automaticamente TUTTI i pacchetti pubblicati su npm. Non devi fare nulla di speciale!

**URL Pattern:**
```
https://unpkg.com/[nome-pacchetto]@[versione]/[percorso-file]
```

**Esempi:**
- File principale: `https://unpkg.com/@tuousername/unpack-tailwindcss-3.4.17`
- File specifico: `https://unpkg.com/@tuousername/unpack-tailwindcss-3.4.17@3.4.17/dist/tailwindcss-3.4.17.js`
- File da unpkg: `https://unpkg.com/@tuousername/unpack-tailwindcss-3.4.17@3.4.17/dist/unpkg/tailwindcss-3.4.17.js`

---

## ✅ Checklist Pre-Pubblicazione

Prima di pubblicare, verifica:

- [ ] Account npm creato e verificato
- [ ] Nome pacchetto unico (controllato su npmjs.com)
- [ ] `package.json` completo con tutti i campi
- [ ] Campo `files` include solo ciò che vuoi pubblicare
- [ ] README.md è chiaro e completo
- [ ] Tutti i file nella cartella `dist/` sono presenti
- [ ] Testato localmente che tutto funziona

---

## 📝 Aggiornare una Versione Esistente

Per pubblicare una nuova versione:

1. Modifica `version` in `package.json`
2. Fai commit delle modifiche
3. Pubblica:
```bash
npm publish --access public
```

---

## 🚨 Errori Comuni

### "Package name already exists"
**Soluzione**: Cambia il nome in `package.json` con qualcosa di più unico.

### "You must verify your email"
**Soluzione**: Verifica l'email su npmjs.com prima di pubblicare.

### "403 Forbidden"
**Soluzione**: Assicurati di essere loggato (`npm login`) e di avere i permessi.

### "Package name invalid"
**Soluzione**: 
- Non può contenere maiuscole
- Non può contenere spazi
- Deve essere URL-safe
- Se usi scope (`@username/`), devi pubblicare con `--access public`

---

## 🔗 Link Utili

- [npm Documentation](https://docs.npmjs.com/)
- [unpkg.com](https://unpkg.com)
- [npm Package Guidelines](https://docs.npmjs.com/packages-and-modules/contributing-packages-to-the-registry)

---

## 💡 Suggerimenti

1. **Usa scope**: `@tuousername/nome-pacchetto` è più professionale
2. **Versioning**: Segui [Semantic Versioning](https://semver.org/)
3. **README**: Un buon README aumenta le possibilità che altri usino il tuo pacchetto
4. **Keywords**: Usa keywords rilevanti per aiutare la ricerca

---

## 🎉 Dopo la Pubblicazione

Una volta pubblicato, il tuo pacchetto sarà disponibile:

- ✅ Su npm: `https://www.npmjs.com/package/@tuousername/unpack-tailwindcss-3.4.17`
- ✅ Su unpkg: `https://unpkg.com/@tuousername/unpack-tailwindcss-3.4.17`
- ✅ Installabile con: `npm install @tuousername/unpack-tailwindcss-3.4.17`
