# prokemn_app

A new Flutter project.

## UI Kit - Estructura de archivos

```
lib/
├── core/
│   └── uikit/
│       ├── iatros_ui_kit.dart          # Barrel principal + exports
│       ├── utils/
│       │   ├── app_colors.dart
│       │   ├── app_typography.dart
│       │   ├── app_spacing.dart
│       │   └── app_theme.dart
│       ├── components/
│       │   ├── buttons/
│       │   │   ├── primary_button.dart
│       │   │   └── secondary_button.dart
│       │   ├── cards/
│       │   │   └── app_card.dart
│       │   ├── inputs/
│       │   │   └── text_input.dart
│       │   ├── backgrounds/
│       │   │   └── app_background.dart
│       │   ├── logo/
│       │   │   └── app_logo.dart
│       │   └── popups/
│       │       └── app_popup.dart
│       └── widgets/
│           └── ui_widget.dart          # Fachada UiWidget
└── feature/
    └── uikit/
        └── iatros_ui_kit.dart          # Re-export para features
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
