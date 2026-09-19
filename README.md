# navegacion_mercado

# Actividad de Navegación - Mercado Campesino

## Integrante y Pantallas
* Integrante: Anderson (`lib/pantallas/productos.dart` y `lib/pantallas/detalle.dart`)

---

## Flujo de Navegación
1. El usuario inicia en la **Pantalla Principal de Productos** (`/productos`), donde ve la lista de productos disponibles.
2. Al seleccionar o tocar un producto, la aplicación navega a la **Segunda Pantalla ("Hola Mundo" / Detalle)** (`/detalle`), enviando el nombre o información del producto seleccionado.
3. En la segunda pantalla, se muestra el mensaje ("Hola Mundo" con la información recibida) y un botón "Regresar" que ejecuta `Navigator.pop` para volver a la pantalla principal.

---

## Tabla de Navegación y Pila

| Desde | Hasta | Acción del usuario | Método de Navigator | Datos que viajan | Pila después del salto |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Productos | Detalle / Hola Mundo | Toca un producto | `Navigator.push` | String (Nombre del producto) | `[Productos, Detalle]` |
| Detalle | Productos | Toca "Regresar" / Botón Atrás | `Navigator.pop` | Ninguno | `[Productos]` |

---

## Decisiones de Diseño
* **Uso de Navigator.push:** Se utiliza `push` para apilar la pantalla de detalle sobre la principal, permitiendo que el botón "Regresar" o la flecha nativa del sistema retorne fácilmente con `pop`.
* **Paso de parámetros por constructor:** El nombre del producto seleccionado se pasa directamente en el constructor del widget para personalizar el saludo en la segunda pantalla.

---

## Cambios respecto al diseño
* Sin cambios por el momento.

---

## Ayudas Usadas
* Documentación oficial de Flutter sobre el widget Navigator, `Navigator.push` y `Navigator.pop`.
* Guías de clase sobre manejo de ramas y Pull Requests en Git.