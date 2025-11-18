#!/bin/bash

# Script per pubblicare rapidamente su npm (e quindi su unpkg.com)
# Utilizzo: ./PUBBLICA_SU_NPM.sh

set -e

echo "📦 Pubblicazione su npm (e quindi su unpkg.com)"
echo ""

# Verifica che npm sia installato
if ! command -v npm &> /dev/null; then
    echo "❌ Errore: npm non è installato"
    echo "Installa Node.js da: https://nodejs.org"
    exit 1
fi

# Verifica che l'utente sia loggato
echo "🔐 Verifica login npm..."
if ! npm whoami &> /dev/null; then
    echo "⚠️  Non sei loggato su npm"
    echo "Esegui: npm login"
    exit 1
fi

USERNAME=$(npm whoami)
echo "✅ Loggato come: $USERNAME"
echo ""

# Verifica package.json
if [ ! -f "package.json" ]; then
    echo "❌ Errore: package.json non trovato"
    exit 1
fi

# Leggi il nome del pacchetto
PACKAGE_NAME=$(node -p "require('./package.json').name")
echo "📋 Nome pacchetto: $PACKAGE_NAME"
echo ""

# Avviso importante sul nome
if [[ $PACKAGE_NAME == unpack-tailwindcss-3.4.17 ]]; then
    echo "⚠️  ATTENZIONE: Il nome del pacchetto potrebbe essere già in uso!"
    echo "Modifica package.json con un nome unico prima di continuare."
    echo "Esempio: @$USERNAME/unpack-tailwindcss-3.4.17"
    echo ""
    read -p "Vuoi continuare comunque? (s/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Ss]$ ]]; then
        echo "Operazione annullata."
        exit 1
    fi
fi

# Verifica che i file esistano
echo "🔍 Verifica file..."
if [ ! -f "dist/tailwindcss-3.4.17.js" ]; then
    echo "❌ Errore: dist/tailwindcss-3.4.17.js non trovato"
    exit 1
fi

if [ ! -f "dist/unpkg/tailwindcss-3.4.17.js" ]; then
    echo "❌ Errore: dist/unpkg/tailwindcss-3.4.17.js non trovato"
    exit 1
fi

echo "✅ Tutti i file presenti"
echo ""

# Mostra cosa verrà pubblicato
echo "📤 File che verranno pubblicati:"
npm pack --dry-run 2>/dev/null | grep -E "\.(js|md|txt)$" | head -10
echo ""

# Conferma
read -p "Vuoi pubblicare su npm? (s/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Ss]$ ]]; then
    echo "Operazione annullata."
    exit 1
fi

# Pubblica
echo ""
echo "🚀 Pubblicazione in corso..."

if [[ $PACKAGE_NAME == @* ]]; then
    # Se usa scope, usa --access public
    npm publish --access public
else
    npm publish
fi

echo ""
echo "✅ Pubblicazione completata!"
echo ""
echo "🔗 Il tuo pacchetto è disponibile su:"
echo "   npm:   https://www.npmjs.com/package/$PACKAGE_NAME"
echo "   unpkg: https://unpkg.com/$PACKAGE_NAME"
echo ""
echo "📦 Per installare:"
echo "   npm install $PACKAGE_NAME"
echo ""
echo "🌐 Per usare da unpkg:"
echo "   https://unpkg.com/$PACKAGE_NAME/dist/tailwindcss-3.4.17.js"
