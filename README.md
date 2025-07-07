
# Administrador de Coordenadas de Minecraft

Una aplicación hecha con Flutter para administrar y compartir coordenadas de Minecraft entre dispositivos usando Firebase.

## ✨ Características

  * **Guarda y organiza** coordenadas de Minecraft con un nombre descriptivo.
  * **Comparte coordenadas** con otros jugadores (deben tener la app instalada).
  * **Sincronización en la nube** para que tus coordenadas estén disponibles en todos tus dispositivos.

## 📋 Requisitos Previos

  * Flutter SDK (última versión estable)
  * Dart SDK (incluido con Flutter)
  * Android Studio / Xcode (para ejecutar en emulador o dispositivo físico)
  * Un proyecto de Firebase

## 🚀 Instalación

### 1\. Clona el repositorio

```bash
git clone https://github.com/guty3rrez/minecraft_coordinates.git
cd minecraft_coordinates
```

### 2\. Instala las dependencias

```bash
flutter pub get
```

### 3\. Configuración de Firebase

1.  Crea un nuevo proyecto en la [Consola de Firebase](https://console.firebase.google.com/).
2.  Agrega una aplicación de Android y/o iOS a tu proyecto.
3.  Sigue las instrucciones que se muestran en la consola de Firebase para descargar y agregar el archivo de configuración a tu proyecto de Flutter.

### 4\. Ejecuta la aplicación

```bash
flutter run
```

## 📦 Compilación para Producción

### Android

```bash
# Para generar un APK
flutter build apk --release

# Para generar un App Bundle
flutter build appbundle --release
```

### iOS

```bash
flutter build ios --release
# Luego, abre el proyecto en Xcode para archivarlo y distribuirlo.
```

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas\! Siéntete libre de enviar un Pull Request.

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la [Licencia MIT](https://www.google.com/search?q=LICENSE).