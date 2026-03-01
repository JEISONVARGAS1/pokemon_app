import '../utils/app_colors.dart';
import '../utils/app_spacing.dart';
import '../utils/app_typography.dart';
import 'package:flutter/material.dart';
import '../components/buttons/primary_button.dart';

class InformationView extends StatelessWidget {
  const InformationView({
    super.key,
    this.imageWidth,
    this.buttonLabel,
    this.imageHeight,
    required this.title,
    required this.image,
    this.onButtonPressed,
    this.isLoading = false,
    required this.description,
  });

  final String title;
  final Widget image;
  final bool isLoading;
  final String description;
  final double? imageWidth;
  final String? buttonLabel;
  final double? imageHeight;
  final VoidCallback? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: imageHeight ?? 250,
            width: imageWidth ?? 250,
            child: image,
          ),
          SizedBox(height: AppSpacing.xl),

          Column(
            children: [
              Text(title, textAlign: .center, style: AppTypography.h3),
              SizedBox(height: AppSpacing.sm),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.sm,
                ),
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ],
          ),

          // Botón de acción (opcional)
          if (buttonLabel != null && buttonLabel!.isNotEmpty) ...[
            SizedBox(height: AppSpacing.xl),
            PrimaryButton(
              label: buttonLabel!,
              onPressed: onButtonPressed,
              isLoading: isLoading,
            ),
          ],
        ],
      ),
    );
  }
}
