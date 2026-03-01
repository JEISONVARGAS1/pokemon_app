import 'package:flutter/material.dart';
import 'package:prokemn_app/core/extension/context_extension.dart';
import 'package:prokemn_app/l10n/app_localizations.dart';
import 'package:prokemn_app/uikit/utils/app_colors.dart';
import 'package:prokemn_app/uikit/utils/app_typography.dart';

class MyProfileCard extends StatelessWidget {
  const MyProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.pokemonIce.withValues(alpha: 0.6),
        border: Border.all(color: AppColors.primary, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.8),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.primary),
                ),
                child: Icon(
                  Icons.person,
                  size: 48,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jeison Vargas',
                      style: AppTypography.h4.copyWith(
                        color: AppColors.primaryDark,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${context.l10n.labelAge}: 26',
                      style: AppTypography.bodyMedium,
                    ),
                    Text(
                      '${context.l10n.labelLocation} Colombia',
                      style: AppTypography.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Icon(
              Icons.sports_esports,
              size: 32,
              color: Colors.red.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
