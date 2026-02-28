// UI Kit principal - exports y fachada.
// Uso: import 'package:prokemn_app/core/uikit/iatros_ui_kit.dart';
// MaterialApp(theme: AppTheme.lightTheme, ...);
// UiWidget().buttons.primaryButton(label: 'Guardar', onPressed: () {});

// Utils
export 'utils/app_colors.dart';
export 'utils/app_typography.dart';
export 'utils/app_spacing.dart';
export 'utils/app_theme.dart';

// Components
export 'components/buttons/primary_button.dart';
export 'components/buttons/secondary_button.dart';
export 'components/cards/app_card.dart';
export 'components/inputs/text_input.dart' show AppTextInput;
export 'components/backgrounds/app_background.dart';
export 'components/logo/app_logo.dart';
export 'components/popups/app_popup.dart';

// Facade
export 'widgets/ui_widget.dart';
