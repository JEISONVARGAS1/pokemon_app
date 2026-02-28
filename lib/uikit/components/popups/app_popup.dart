import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_spacing.dart';
import '../../utils/app_typography.dart';
import '../buttons/primary_button.dart';
import '../buttons/secondary_button.dart';

/// Popup/diálogo base con estilo consistente.
class AppPopup extends StatelessWidget {
  const AppPopup({
    super.key,
    this.title,
    this.content,
    this.primaryLabel,
    this.secondaryLabel,
    this.onPrimaryTap,
    this.onSecondaryTap,
    this.child,
  });

  final String? title;
  final String? content;
  final String? primaryLabel;
  final String? secondaryLabel;
  final VoidCallback? onPrimaryTap;
  final VoidCallback? onSecondaryTap;
  final Widget? child;

  static Future<T?> show<T>({
    required BuildContext context,
    String? title,
    String? content,
    String? primaryLabel,
    String? secondaryLabel,
    VoidCallback? onPrimaryTap,
    VoidCallback? onSecondaryTap,
    Widget? child,
  }) {
    return showDialog<T>(
      context: context,
      builder: (context) => AppPopup(
        title: title,
        content: content,
        primaryLabel: primaryLabel,
        secondaryLabel: secondaryLabel,
        onPrimaryTap: onPrimaryTap,
        onSecondaryTap: onSecondaryTap,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
      ),
      title: title != null
          ? Text(title!, style: AppTypography.h5.copyWith(color: AppColors.textPrimary))
          : null,
      content: child ??
          (content != null
              ? Text(
                  content!,
                  style: AppTypography.bodyMedium.copyWith(color: AppColors.textSecondary),
                )
              : null),
      actions: [
        if (secondaryLabel != null)
          SecondaryButton(
            label: secondaryLabel!,
            onPressed: () {
              onSecondaryTap?.call();
              Navigator.of(context).pop();
            },
          ),
        if (primaryLabel != null)
          PrimaryButton(
            label: primaryLabel!,
            onPressed: () {
              onPrimaryTap?.call();
              Navigator.of(context).pop();
            },
          ),
      ],
    );
  }
}
