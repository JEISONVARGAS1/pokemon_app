import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_typography.dart';

/// Logo/placeholder de la aplicación.
/// Puede reemplazarse por un asset o SVG real.
class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.size = 48,
    this.text,
  });

  final double size;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withValues(alpha: 0.3),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Center(
            child: Text(
              text ?? 'LOGO',
              style: AppTypography.caption.copyWith(
                color: AppColors.surface,
                fontWeight: FontWeight.bold,
                fontSize: size * 0.25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
