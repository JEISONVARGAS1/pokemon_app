# Prokemn App

Aplicación Flutter de Pokédex con arquitectura limpia.

## Imágenes de la aplicación

![Captura 1](<assets/readme_image/Screenshot 2026-03-01 at 2.26.52 PM.png>)
![Captura 2](<assets/readme_image/Screenshot 2026-03-01 at 2.27.16 PM.png>)
![Captura 3](<assets/readme_image/Screenshot 2026-03-01 at 2.27.24 PM.png>)
![Captura 4](<assets/readme_image/Screenshot 2026-03-01 at 2.27.36 PM.png>)
![Captura 5](<assets/readme_image/Screenshot 2026-03-01 at 2.28.23 PM.png>)

## Cómo arrancar el proyecto

Antes de ejecutar la aplicación, asegúrate de tener todo configurado correctamente:

### 1. Verificar el entorno Flutter

```bash
flutter doctor
```

Si todo está correcto, continúa. Si hay problemas, resuélvelos antes de seguir.

### 2. Actualizar dependencias

```bash
flutter pub upgrade
```

### 3. Generar archivos autogenerados

El proyecto utiliza **Riverpod Generator**, **Freezed** y **build_runner** para generar código. Ejecuta:

```bash
dart run build_runner build --delete-conflicting-outputs
```

Esto generará los archivos `.g.dart` (Riverpod) y `.freezed.dart` (Freezed) necesarios para el funcionamiento de la app.

### 4. Ejecutar la aplicación

```bash
flutter run
```

---

## Paquetes principales

| Paquete | Uso |
|---------|-----|
| **riverpod** / **flutter_riverpod** | Gestión de estado reactiva |
| **riverpod_annotation** / **riverpod_generator** | Generación de providers con anotaciones |
| **freezed** / **freezed_annotation** | Modelos inmutables y estados con pattern matching |
| **go_router** | Navegación y rutas declarativas |
| **http** | Peticiones HTTP a la API |
| **get_it** | Inyección de dependencias |
| **google_fonts** | Tipografías personalizadas |
| **url_launcher** | Abrir enlaces externos |

---

## Estructura del proyecto - Clean Architecture

El proyecto sigue **Clean Architecture**, organizando cada feature en **4 capas**:

```
lib/
├── core/                    # Código compartido (modelos, errores, widgets, API base)
├── uikit/                   # Componentes UI reutilizables
├── l10n/                    # Localizaciones
└── feature/                 # Features organizados por capas
    └── [feature]/
        ├── data/            # Capa 1: Peticiones y fuentes de datos
        ├── repositories/    # Capa 2: Abstracción y manejo de errores
        ├── provider/        # Capa 3: Lógica de negocio y estado
        └── ui/              # Capa 4: Interfaz de usuario
```

### Las 4 capas por feature

| Capa | Carpeta | Responsabilidad |
|------|---------|-----------------|
| **Data** | `data/` | Realiza las peticiones HTTP a la API. Contiene interfaces y implementaciones concretas de los servicios. |
| **Repository** | `repositories/` | Capa de abstracción entre data y provider. Captura excepciones, transforma errores y devuelve `QueryResponseModel` con éxito o fallo. |
| **Provider** | `provider/` | Maneja la lógica de negocio, el estado (con Freezed) y orquesta las llamadas a los repositorios. |
| **UI** | `ui/` | La interfaz de usuario. Páginas, widgets y componentes que consumen los providers. |

### Ejemplo de flujo (feature Home)

```
data/home_api.dart          → Petición HTTP a la API de Pokémon
repositories/home_repository.dart → Captura errores, devuelve QueryResponseModel
provider/home_controller.dart     → Lógica: paginación, búsqueda, favoritos
ui/home_page.dart                → Vista que muestra el listado
```

---

## Orden de las vistas (flujo de navegación)

1. **Splash** (`/splash`) — Pantalla inicial de carga
2. **Onboarding** (`/onboarding`) — Tutorial de bienvenida (primera vez)
3. **Lobby** (`/lobby`) — Menú principal con navegación
4. **Home** (`/home`) — Pokédex con listado y búsqueda
5. **Pokemon Description** (`/pokemon/:id`) — Detalle de un Pokémon
6. **Favorites** — Lista de Pokémon favoritos
7. **Profile** — Perfil del entrenador
8. **Regions** — Regiones de Pokémon

---

## UI Kit - Estructura de archivos

```
lib/uikit/
├── pokemn_ui_kit.dart       # Barrel principal + exports
├── utils/
│   ├── app_colors.dart
│   ├── app_typography.dart
│   └── app_spacing.dart
├── components/
│   ├── buttons/
│   │   └── primary_button.dart
│   ├── cards/
│   │   └── app_card.dart
│   ├── inputs/
│   │   └── text_input.dart
│   ├── backgrounds/
│   │   └── app_background.dart
│   ├── logo/
│   │   └── app_logo.dart
│   └── popups/
│       └── app_popup.dart
└── widgets/
    └── ui_widget.dart
```
