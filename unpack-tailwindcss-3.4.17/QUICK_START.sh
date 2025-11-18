#!/bin/bash

# Script per pubblicare rapidamente la repository su GitHub
# Utilizzo: ./QUICK_START.sh TUO_USERNAME

set -e

if [ -z "$1" ]; then
    echo "❌ Errore: Fornisci il tuo username GitHub"
    echo "Utilizzo: ./QUICK_START.sh TUO_USERNAME"
    exit 1
fi

USERNAME=$1
REPO_NAME="unpack-tailwindcss-3.4.17"

echo "🚀 Inizializzazione repository Git..."

# Inizializza Git se non già fatto
if [ ! -d ".git" ]; then
    git init
    echo "✅ Git inizializzato"
else
    echo "ℹ️  Git già inizializzato"
fi

# Aggiungi tutti i file
echo "📦 Aggiunta file..."
git add .

# Crea commit
echo "💾 Creazione commit..."
git commit -m "Initial commit: TailwindCSS 3.4.17 unpacked from CDN and unpkg" || echo "ℹ️  Nessuna modifica da committare"

# Configura remote (rimuove se esiste già)
echo "🔗 Configurazione remote..."
git remote remove origin 2>/dev/null || true
git remote add origin "https://github.com/${USERNAME}/${REPO_NAME}.git"

# Imposta branch main
git branch -M main 2>/dev/null || true

echo ""
echo "✅ Setup completato!"
echo ""
echo "📝 Prossimi passi:"
echo "1. Crea la repository su GitHub: https://github.com/new"
echo "   Nome: ${REPO_NAME}"
echo "   NON spuntare 'Initialize with README'"
echo ""
echo "2. Pubblica i file:"
echo "   git push -u origin main"
echo ""
echo "3. Se GitHub richiede autenticazione, usa un Personal Access Token"
echo "   oppure configura SSH (vedi PUBBLICAZIONE.md)"
