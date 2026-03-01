import 'package:flutter/material.dart';
import 'package:prokemn_app/uikit/iatros_ui_kit.dart';

class OnboardingSlide extends StatelessWidget {
  final String header;
  final String title;
  final String imagePath;
  final String description;
  final VoidCallback onPressed;

  const OnboardingSlide({
    super.key,
    required this.header,
    required this.title,
    required this.imagePath,
    required this.onPressed,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(imagePath, fit: BoxFit.contain, height: 200),
                  const SizedBox(height: 30),
                  Text(
                    title,
                    style: AppTypography.h3,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
