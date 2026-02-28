import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_spacing.dart';

/// Tarjeta base con estilo consistente.
class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    this.onTap,
    this.padding,
    this.margin,
    this.elevation,
    required this.child,
  });

  final Widget child;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    final card = Card(
      color: AppColors.surface,
      elevation: elevation ?? AppSpacing.elevationSm,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
      ),
      margin: margin ?? const EdgeInsets.all(AppSpacing.sm),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(AppSpacing.md),
        child: child,
      ),
    );

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        child: card,
      );
    }

    return card;
  }
}
