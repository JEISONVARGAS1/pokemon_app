import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/backgrounds/app_background.dart';
import '../components/buttons/primary_button.dart';
import 'information_view.dart';
import '../components/buttons/secondary_button.dart';
import '../components/cards/app_card.dart';
import '../components/inputs/text_input.dart' as uikit;
import '../components/logo/app_logo.dart';
import '../components/popups/app_popup.dart';

/// Fachada/factory para acceso agrupado a los widgets del UI Kit.
/// Uso: UiWidget().buttons.primaryButton(...), UiWidget().inputs.textInput(...)
class UiWidget {
  UiWidget._();

  static final UiWidget _instance = UiWidget._();

  factory UiWidget() => _instance;

  UiWidgetButtons get buttons => UiWidgetButtons();
  UiWidgetInfoViews get infoViews => UiWidgetInfoViews();
  UiWidgetInputs get inputs => UiWidgetInputs();
  UiWidgetCards get cards => UiWidgetCards();
  UiWidgetBackgrounds get backgrounds => UiWidgetBackgrounds();
  UiWidgetLogo get logo => UiWidgetLogo();
  UiWidgetPopups get popups => UiWidgetPopups();
}

class UiWidgetButtons {
  Widget primaryButton({
    required String label,
    VoidCallback? onPressed,
    bool isLoading = false,
    Widget? icon,
    double? width,
  }) {
    return PrimaryButton(
      label: label,
      onPressed: onPressed,
      isLoading: isLoading,
      icon: icon,
      width: width,
    );
  }

  Widget secondaryButton({
    required String label,
    VoidCallback? onPressed,
    bool isLoading = false,
    Widget? icon,
    double? width,
  }) {
    return SecondaryButton(
      label: label,
      onPressed: onPressed,
      isLoading: isLoading,
      icon: icon,
      width: width,
    );
  }
}

class UiWidgetInfoViews {
  Widget informationView({
    required String title,
    required Widget image,
    required String description,
    String? buttonLabel,
    VoidCallback? onButtonPressed,
    double? imageHeight,
    double? imageWidth,
  }) {
    return InformationView(
      title: title,
      image: image,
      description: description,
      buttonLabel: buttonLabel,
      onButtonPressed: onButtonPressed,
      imageHeight: imageHeight,
      imageWidth: imageWidth,
    );
  }
}

class UiWidgetInputs {
  Widget textInput({
    TextEditingController? controller,
    String? label,
    String? hint,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    TextInputAction textInputAction = TextInputAction.done,
    int maxLines = 1,
    bool enabled = true,
    bool readOnly = false,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? Function(String?)? validator,
    void Function(String)? onChanged,
    void Function(String)? onSubmitted,
    List<TextInputFormatter>? inputFormatters,
    bool autofocus = false,
  }) {
    return uikit.AppTextInput(
      controller: controller,
      label: label,
      hint: hint,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      maxLines: maxLines,
      enabled: enabled,
      readOnly: readOnly,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      validator: validator,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      inputFormatters: inputFormatters,
      autofocus: autofocus,
    );
  }
}

class UiWidgetCards {
  Widget appCard({
    required Widget child,
    VoidCallback? onTap,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    double? elevation,
  }) {
    return AppCard(
      onTap: onTap,
      padding: padding,
      margin: margin,
      elevation: elevation,
      child: child,
    );
  }
}

class UiWidgetBackgrounds {
  Widget appBackground({
    required Widget child,
    Color? color,
  }) {
    return AppBackground(color: color, child: child);
  }
}

class UiWidgetLogo {
  Widget appLogo({double size = 48, String? text}) {
    return AppLogo(size: size, text: text);
  }
}

class UiWidgetPopups {
  Future<T?> showAppPopup<T>({
    required BuildContext context,
    String? title,
    String? content,
    String? primaryLabel,
    String? secondaryLabel,
    VoidCallback? onPrimaryTap,
    VoidCallback? onSecondaryTap,
    Widget? child,
  }) {
    return AppPopup.show<T>(
      context: context,
      title: title,
      content: content,
      primaryLabel: primaryLabel,
      secondaryLabel: secondaryLabel,
      onPrimaryTap: onPrimaryTap,
      onSecondaryTap: onSecondaryTap,
      child: child,
    );
  }
}
