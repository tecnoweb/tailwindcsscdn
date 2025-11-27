# 📤 Guida alla Pubblicazione della Repository

Questa guida ti spiega passo-passo come caricare e pubblicare questa repository su GitHub (o altri servizi Git).

## 🚀 Metodo 1: Pubblicazione su GitHub (Raccomandato)

### Passo 1: Inizializza Git (se non già fatto)

```bash
cd unpack-tailwindcss-3.4.17
git init
```

### Passo 2: Aggiungi tutti i file

```bash
git add .
```

### Passo 3: Crea il primo commit

```bash
git commit -m "Initial commit: TailwindCSS 3.4.17 unpacked from CDN and unpkg"
```

### Passo 4: Crea la repository su GitHub

1. Vai su [GitHub.com](https://github.com)
2. Clicca su **"New repository"** (o **"+"** → **"New repository"**)
3. Compila i campi:
   - **Repository name**: `unpack-tailwindcss-3.4.17` (o un nome a tua scelta)
   - **Description**: `Unpacked version of TailwindCSS 3.4.17 from CDN and unpkg`
   - **Visibility**: Scegli **Public** o **Private**
   - **NON** spuntare "Initialize with README" (abbiamo già i file)
4. Clicca su **"Create repository"**

### Passo 5: Collega la repository locale a GitHub

GitHub ti mostrerà i comandi. Esegui:

```bash
git remote add origin https://github.com/TUO_USERNAME/unpack-tailwindcss-3.4.17.git
```

(Sostituisci `TUO_USERNAME` con il tuo username GitHub)

### Passo 6: Carica i file su GitHub

```bash
git branch -M main
git push -u origin main
```

Se GitHub richiede autenticazione:
- Usa un **Personal Access Token** invece della password
- Oppure configura SSH (vedi sotto)

---

## 🔐 Metodo 2: Pubblicazione con SSH (Più Sicuro)

### Configura SSH (se non già fatto)

1. Genera una chiave SSH:
```bash
ssh-keygen -t ed25519 -C "tua_email@example.com"
```

2. Aggiungi la chiave SSH a GitHub:
```bash
cat ~/.ssh/id_ed25519.pub
```
Copia l'output e aggiungilo su GitHub: **Settings** → **SSH and GPG keys** → **New SSH key**

3. Usa l'URL SSH invece di HTTPS:
```bash
git remote add origin git@github.com:TUO_USERNAME/unpack-tailwindcss-3.4.17.git
git push -u origin main
```

---

## 📦 Metodo 3: Pubblicazione su npm (Opzionale)

Se vuoi pubblicare anche su npm:

### Passo 1: Accedi a npm

```bash
npm login
```

### Passo 2: Verifica il nome del pacchetto

Controlla che il nome in `package.json` sia unico. Se necessario, cambialo:

```bash
# Modifica package.json con un nome unico, ad esempio:
# "name": "@tuo-username/unpack-tailwindcss-3.4.17"
```

### Passo 3: Pubblica

```bash
npm publish --access public
```

---

## ✅ Verifica della Pubblicazione

Dopo la pubblicazione, verifica che tutto sia corretto:

1. **GitHub**: Visita `https://github.com/TUO_USERNAME/unpack-tailwindcss-3.4.17`
2. Controlla che tutti i file siano presenti
3. Verifica che il README.md sia visualizzato correttamente

---

## 🔄 Aggiornamenti Futuri

Per aggiornare la repository dopo modifiche:

```bash
git add .
git commit -m "Descrizione delle modifiche"
git push
```

---

## 📝 Note Importanti

- ✅ Assicurati che tutti i file siano committati prima di fare push
- ✅ Controlla che il `.gitignore` escluda file non necessari (node_modules, etc.)
- ✅ Verifica che il README.md sia completo e chiaro
- ✅ I file nella cartella `dist/` sono essenziali - non dimenticarli!

---

## 🆘 Problemi Comuni

### Errore: "remote origin already exists"
```bash
git remote remove origin
git remote add origin https://github.com/TUO_USERNAME/unpack-tailwindcss-3.4.17.git
```

### Errore: "failed to push some refs"
```bash
git pull origin main --allow-unrelated-histories
git push -u origin main
```

### Errore di autenticazione GitHub
- Usa un Personal Access Token invece della password
- Oppure configura SSH (vedi Metodo 2)

---

## 📚 Risorse Utili

- [GitHub Docs](https://docs.github.com)
- [Git Handbook](https://guides.github.com/introduction/git-handbook/)
- [npm Publishing Guide](https://docs.npmjs.com/packages-and-modules/contributing-packages-to-the-registry)
