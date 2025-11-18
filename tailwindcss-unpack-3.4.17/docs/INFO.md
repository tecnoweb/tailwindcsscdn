# Informazioni su TailwindCSS 3.4.17

## Dettagli del File

- **Versione**: 3.4.17
- **Dimensione**: ~407 KB (407,279 bytes)
- **Formato**: JavaScript minificato
- **Source**: https://cdn.tailwindcss.com/3.4.17
- **Data Download**: $(date)

## Caratteristiche

Il file contiene l'intera libreria TailwindCSS in formato minificato, pronta per l'uso nel browser o in ambiente Node.js.

## Utilizzo

### Browser Standalone

```html
<!DOCTYPE html>
<html>
<head>
  <script src="https://cdn.tailwindcss.com/3.4.17"></script>
</head>
<body>
  <div class="bg-blue-500 text-white p-4">
    Hello TailwindCSS!
  </div>
</body>
</html>
```

### Configurazione Personalizzata

```html
<script>
  tailwind.config = {
    theme: {
      extend: {
        colors: {
          'custom-blue': '#1fb6ff',
        }
      }
    }
  }
</script>
<script src="https://cdn.tailwindcss.com/3.4.17"></script>
```

## Note Tecniche

- Il file è un IIFE (Immediately Invoked Function Expression)
- Contiene tutte le utility classes di TailwindCSS
- Include il sistema di configurazione
- Supporta JIT (Just-In-Time) compilation

## Compatibilità

- Browser moderni (Chrome, Firefox, Safari, Edge)
- Node.js 14+
- Supporto ES Modules
