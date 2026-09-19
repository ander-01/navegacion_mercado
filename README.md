# Navegación Mercado Campesino

## Datos del Proyecto
* **Estudiante:** Anderson Muñoz Rueda
* **Asignatura:** Programación Móvil
* **Pantallas desarrolladas:**
  1. `lib/pantallas/productos.dart` (Inicio - Lista de Productores)
  2. `lib/pantallas/detalle.dart` (Detalle de Productor y Productos)

---

## Flujo de Navegación

1. La aplicación inicia en la vista de **Inicio**, donde se despliega un listado (`ListView.builder`) con 5 productores locales (nombre, vereda, distancia y foto de perfil).
2. Al presionar sobre cualquiera de los productores, la app ejecuta un salto mediante `Navigator.push` hacia la vista de **Detalle de Productor**.
3. Durante el salto, se envían mediante el constructor el nombre del productor, su vereda y la URL de la imagen de portada.
4. En la pantalla de **Detalle**, se muestra la portada del productor seleccionada en alta resolución junto con la lista de sus 4 productos disponibles (Manzana roja, Lechuga crespa, Uvas frescas y Brócoli) con precio, miniatura y opción de agregar.
5. El usuario puede presionar el botón "Volver a Productores" o el botón de regresar del sistema para ejecutar `Navigator.pop` y retornar a la vista principal.

---

## Tabla de Navegación y Pila

| Desde | Hasta | Acción del usuario | Método de Navigator | Datos que viajan | Pila después del salto |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Inicio (`/inicio`) | Detalle (`/productor`) | Toca un productor de la lista | `Navigator.push` | String (Nombre, Vereda e Imagen) | `[PantallaProductos, PantallaDetalle]` |
| Detalle (`/productor`) | Inicio (`/inicio`) | Toca "Volver" / Botón Atrás | `Navigator.pop` | Ninguno | `[PantallaProductos]` |

---

## Decisiones de Diseño

* **Uso de Navigator.push:** Se utilizó `push` para apilar la pantalla de detalle sobre la lista principal y conservar la posición de desplazamiento al volver.
* **Paso de parámetros por constructor:** El nombre, la vereda y la imagen del productor seleccionado se pasan directamente en el constructor de `PantallaDetalle` para personalizar la vista.
* **Estructura del proyecto:** Por acuerdo para el trabajo individual, se implementó el flujo enfocado en las vistas de Inicio y Detalle de Productor.

---

## Cambios respecto al diseño

* Se integró en la vista de detalle la lista de productos con precio, miniatura e indicación visual al presionar el botón de agregar para complementar la interacción del usuario.

---

## Ayudas Usadas

* Documentación oficial de Flutter (clases `Navigator`, `ListView.builder` y paso de parámetros en constructores).
* Notas de clase y guías sobre el manejo de ramas, commits y Pull Requests en Git/GitHub.