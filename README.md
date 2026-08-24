# Mis Finanzas

App personal de finanzas — ingresos, gastos, presupuesto, deudas y ahorro en un solo lugar. Pensada para uso diario desde el celular, con datos guardados en la nube (Supabase) y separados por usuario.

## Módulos

- **Resumen** — flujo de caja del mes, gastos por categoría, tendencia de los últimos 6 meses y vista rápida de tus bolsillos de ahorro.
- **Registro** — donde anotas cada ingreso o gasto. Soporta ingresos en USD (con TRM del día y comisión de conversión), vincular un gasto a un bolsillo de ahorro, y marcar a qué mes corresponde un ingreso (útil cuando el sueldo llega a fin de mes anterior).
- **Plan** — con cuatro secciones:
  - *Ingreso*: cuánto ganas al mes y cuánto presupuestas por categoría (por quincena o por mes completo), con el disponible restante.
  - *Categorías*: crea tus propios grupos y categorías de gasto, a tu manera.
  - *Deudas*: registra cada deuda (saldo, cuota, tasa de interés). Cada una genera su propia categoría de pago, y al registrar un pago la app calcula cuánto fue interés y cuánto abono a capital, descontando el saldo automáticamente.
  - *Análisis*: cómo se reparte tu ingreso, comparación por quincena, y proyección de cuánto te falta para pagar cada deuda — con sugerencia de a cuál priorizarle.
- **Bolsillos** — tus ahorros por objetivo (fondo de emergencia, viajes, etc.), con aportes, retiros, meta mensual de aporte, y conciliación contra el saldo real del banco.

## Cómo funciona

Es una sola página (`index.html`) sin proceso de build — abre directo en el navegador. Los datos se guardan en [Supabase](https://supabase.com) (base de datos + login por correo), separados por usuario mediante reglas de seguridad a nivel de base de datos (cada quien solo ve lo suyo).

## Archivos

- `index.html` — la app completa.
- `supabase-setup.sql` — script para crear la tabla y las reglas de seguridad en Supabase (se corre una sola vez).
- `COMO-PUBLICAR.md` — guía paso a paso para publicarla gratis.

## Nota de seguridad

La "anon key" de Supabase que aparece dentro de `index.html` es segura de tener en el código, incluso en un repositorio — está diseñada para eso. La protección real de los datos la dan las políticas de seguridad (RLS) del script SQL, no esa llave.
