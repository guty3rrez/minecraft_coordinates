# Minecraft Coordinates Manager

A Flutter application for managing and sharing Minecraft coordinates across devices using Firebase.

## Features

- Save and organize Minecraft coordinates with descriptions
- Share coordinates with other players
- Categorize locations with custom tags
- Offline support with cloud sync

## Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK (comes with Flutter)
- Android Studio / Xcode (for running on emulator/device)
- Firebase project (for cloud sync)

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/minecraft_coordinates.git
cd minecraft_coordinates
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Firebase Setup

1. Create a new Firebase project at https://console.firebase.google.com/
2. Add a new Android/iOS app to your Firebase project
3. Download the configuration files:
   - For Android: `google-services.json` (place in `android/app/`)
   - For iOS: `GoogleService-Info.plist` (place in `ios/Runner/`)

### 4. Run the app

```bash
# For Android
flutter run -d <device_id>

# For iOS
flutter run -d <device_id>
```

## Building for Release

### Android

```bash
flutter build apk --release
# or for app bundle
flutter build appbundle
```

### iOS

```bash
flutter build ios --release
# Open Xcode and archive the app
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).
