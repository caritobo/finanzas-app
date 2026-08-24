# Cómo publicar tu app de finanzas — gratis

## 1. Crea la base de datos (Supabase) — 5 min
1. Ve a https://supabase.com → "Start your project" → crea cuenta gratis.
2. Crea un nuevo proyecto (elige cualquier nombre y contraseña de base de datos).
3. Cuando cargue, ve a **SQL Editor** (menú izquierdo) → "New query".
4. Pega el contenido del archivo `supabase-setup.sql` y dale **Run**.
5. Ve a **Project Settings > API**. Copia dos valores:
   - **Project URL**
   - **anon public key**

## 2. Conecta tu app con la base de datos — 2 min
1. Abre `index.html` con cualquier editor de texto (o el Bloc de notas).
2. Busca estas dos líneas casi al inicio del `<script>`:
   ```js
   const SUPABASE_URL = "https://TU-PROYECTO.supabase.co";
   const SUPABASE_ANON_KEY = "TU-ANON-KEY-AQUI";
   ```
3. Reemplaza con los valores que copiaste. Guarda el archivo.

## 3. Publícalo — 2 min, sin instalar nada
**Opción más simple — Netlify Drop:**
1. Ve a https://app.netlify.com/drop
2. Arrastra el archivo `index.html` a la página.
3. Netlify te da una URL al instante (ej. `mis-finanzas-xyz.netlify.app`).
4. Guarda esa URL en tu iPhone (Safari → compartir → "Agregar a inicio") y se abre como una app.

**Alternativa:** Vercel o GitHub Pages funcionan igual de bien y también son gratis, si prefieres tener el código en un repositorio de GitHub para editarlo después.

## 4. Úsala
1. Abre la URL en tu iPhone y en tu computador.
2. La primera vez, regístrate con tu correo y una contraseña (esto es tuyo, no de Claude ni de Anthropic).
3. Todo lo que registres se guarda en tu base de datos de Supabase y se sincroniza entre dispositivos automáticamente.

## Costos reales
- Supabase: $0 (plan gratis cubre muchísimo más de lo que una persona usa a diario).
- Netlify: $0.
- Dominio propio (opcional, tipo misfinanzas.com): ~$10-15 USD/año, no es necesario.

## Nota de seguridad
Cada usuario solo puede ver y editar su propia fila en la base de datos (así quedó configurado en el SQL). Aun así, esta contraseña es distinta a la de tu banco o cualquier otra cuenta — trátala como cualquier credencial normal.
