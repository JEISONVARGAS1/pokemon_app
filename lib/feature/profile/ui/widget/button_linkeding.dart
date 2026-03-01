import 'package:flutter/material.dart';
import 'package:prokemn_app/core/extension/context_extension.dart';
import 'package:prokemn_app/uikit/utils/app_colors.dart';
import 'package:prokemn_app/uikit/utils/app_typography.dart';

class ButtonLinkeding extends StatelessWidget {
  final Function() onTap;

  const ButtonLinkeding({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.link, color: Colors.white, size: 24),
            const SizedBox(width: 12),
            Text(
              context.l10n.viewProfileOnLinkedin,
              style: AppTypography.button.copyWith(
                color: Colors.white,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
