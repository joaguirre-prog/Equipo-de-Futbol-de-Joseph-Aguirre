# ⚽ Equipo de Fútbol favorito de Joseph Aguirre

Aplicación desarrollada en Flutter para presentar información de un equipo de fútbol mediante diferentes pantallas, navegación, widgets, interacción y personalización.

## 👤 Autor

**Joseph Aguirre**

## 🎯 Actividad Integradora 1

La primera versión de la aplicación fue una aplicación básica en Flutter sobre un equipo de fútbol, utilizando MaterialApp, Scaffold, AppBar, textos, iconos, Container, Column y una interacción mediante botón.

---

# 🏆 Actividad Integradora 2 – Desarrollo de una Aplicación Flutter con Navegación y Nuevos Widgets

## Descripción de la aplicación

Esta versión **continúa la aplicación desarrollada en la Actividad Integradora 1**. La aplicación fue ampliada para incluir cuatro pantallas relacionadas con un equipo de fútbol, navegación mediante Navigator, nuevos widgets, interacciones, estado básico con setState(), personalización visual y un paquete externo.

## Nuevas funcionalidades

- Navegación entre cuatro pantallas mediante `Navigator`.
- Lista de jugadores.
- Vista de plantilla mediante cuadrícula.
- Sistema de jugadores favoritos.
- Mensajes mediante `SnackBar`.
- Ventana informativa mediante `AlertDialog`.
- Botón para abrir una página web mediante `url_launcher`.
- Personalización de colores.
- Logotipo de la aplicación.
- Ícono personalizado de la aplicación.
- Organización del código mediante carpetas.

## 📱 Cuatro pantallas

### 1. Inicio
Presenta el logotipo, nombre del equipo y botones para acceder a las demás secciones.

### 2. Jugadores
Muestra los jugadores mediante `ListView`, `Card` y `ListTile`. Permite marcar o desmarcar jugadores como favoritos.

### 3. Plantilla
Presenta los jugadores mediante `GridView`, mostrando número, nombre y posición.

### 4. Información
Presenta información general del equipo e incorpora botones para mostrar un `AlertDialog` y abrir una página web.

## 🧩 Widgets utilizados

Se utilizaron, entre otros:

- `ListView`
- `GridView`
- `ListTile`
- `Card`
- `CircleAvatar`
- `Divider`
- `Image`
- `Icon`
- `ElevatedButton`
- `IconButton`
- `FloatingActionButton`
- `Padding`
- `SizedBox`
- `Container`
- `Expanded`

## 🔄 Interacciones implementadas

1. Navegación entre las cuatro pantallas mediante `Navigator`.
2. Marcar y desmarcar jugadores como favoritos.
3. Mostrar un `SnackBar` al modificar favoritos.
4. Mostrar un `AlertDialog` con información de la aplicación.
5. Abrir una página web utilizando un paquete externo.

## ⚙️ Funcionalidad mediante setState()

La pantalla de jugadores utiliza `setState()` para actualizar el conjunto de jugadores favoritos.

Cuando el usuario presiona el icono de favorito, el jugador se agrega o elimina de la lista de favoritos y el icono cambia en pantalla.

## 📦 Paquete externo

Se utilizó:

**url_launcher**

Se utiliza para abrir una página web desde la aplicación mediante el navegador del dispositivo.

## 🎨 Personalización

- **Nombre:** Mi Equipo de Fútbol.
- **Ícono:** logotipo personalizado del equipo.
- **Logotipo:** incluido en `assets/logo.png`.
- **Colores:** verde y blanco.
- **AppBar:** personalizado con el color principal del equipo.

## 📂 Organización del proyecto

```text
lib/
├── main.dart
├── screens/
│   ├── home_screen.dart
│   ├── players_screen.dart
│   ├── squad_screen.dart
│   └── info_screen.dart
├── widgets/
│   ├── player_card.dart
│   └── team_logo.dart
└── data/
    └── players_data.dart
```

## ▶️ Instrucciones para ejecutar

1. Abrir el proyecto en Visual Studio Code.
2. Verificar que Flutter esté instalado.
3. Conectar o iniciar un emulador Android.
4. Abrir la terminal del proyecto.
5. Ejecutar:

```bash
flutter pub get
```

6. Generar el ícono personalizado:

```bash
dart run flutter_launcher_icons
```

7. Ejecutar la aplicación:

```bash
flutter run
```

## 📸 Evidencias

Agregar aquí las capturas de pantalla de:

- Pantalla de inicio.
- Pantalla de jugadores.
- Pantalla de plantilla.
- Pantalla de información.
- Navegación entre pantallas.
- Sistema de favoritos.
- SnackBar.
- AlertDialog.
- Aplicación ejecutándose en el emulador Android.
