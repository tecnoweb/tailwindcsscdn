# Unpack TailwindCSS 3.4.17

Repository contenente la versione unpacked di TailwindCSS 3.4.17 scaricata dalla CDN ufficiale.

## 📦 Contenuto

Questa repository contiene i file JavaScript completi di TailwindCSS versione 3.4.17 scaricati da:
- **CDN ufficiale**: https://cdn.tailwindcss.com/3.4.17
- **unpkg.com**: https://unpkg.com/tailwindcss@3.4.17
- **Versione**: 3.4.17
- **Formato**: JavaScript minificato

## 📁 Struttura

```
unpack-tailwindcss-3.4.17/
├── dist/
│   ├── tailwindcss-3.4.17.js    # File JavaScript completo (CDN ufficiale)
│   ├── SHA256SUM.txt            # Checksum del file CDN
│   └── unpkg/                    # File da unpkg.com
│       ├── tailwindcss-3.4.17.js
│       ├── SHA256SUM.txt
│       └── README.md
├── docs/                         # Documentazione aggiuntiva
├── README.md                     # Questo file
└── package.json                  # Metadati del progetto
```

## 🚀 Utilizzo

### Includere nel tuo progetto HTML

**Da CDN ufficiale:**
```html
<script src="https://cdn.tailwindcss.com/3.4.17"></script>
```

**Da unpkg.com:**
```html
<script src="https://unpkg.com/tailwindcss@3.4.17"></script>
```

**File locale (CDN):**
```html
<script src="./dist/tailwindcss-3.4.17.js"></script>
```

**File locale (unpkg):**
```html
<script src="./dist/unpkg/tailwindcss-3.4.17.js"></script>
```

### Utilizzo con Node.js

```javascript
// Se necessario, puoi caricare il file come modulo
const tailwindcss = require('./dist/tailwindcss-3.4.17.js');
```

## 📝 Note

- Il file è in formato minificato per ottimizzare le dimensioni
- Questa è una versione standalone di TailwindCSS che può essere utilizzata direttamente nel browser
- Per progetti di produzione, si consiglia di utilizzare il processo di build standard di TailwindCSS

## 🔗 Link Utili

- [Documentazione ufficiale TailwindCSS](https://tailwindcss.com/docs)
- [CDN TailwindCSS](https://cdn.tailwindcss.com)
- [GitHub TailwindCSS](https://github.com/tailwindlabs/tailwindcss)

## 📄 Licenza

TailwindCSS è rilasciato sotto licenza MIT. Consulta il repository ufficiale per i dettagli completi della licenza.

## 📅 Data di Creazione

Repository creata il: $(date +"%Y-%m-%d")

## 📤 Come Pubblicare questa Repository

Per pubblicare questa repository su GitHub o altri servizi Git, consulta il file **[PUBBLICAZIONE.md](./PUBBLICAZIONE.md)** per una guida passo-passo completa.

### Quick Start (GitHub)

```bash
# 1. Inizializza Git
git init

# 2. Aggiungi tutti i file
git add .

# 3. Crea il primo commit
git commit -m "Initial commit: TailwindCSS 3.4.17 unpacked"

# 4. Crea la repository su GitHub, poi:
git remote add origin https://github.com/TUO_USERNAME/unpack-tailwindcss-3.4.17.git
git branch -M main
git push -u origin main
```
