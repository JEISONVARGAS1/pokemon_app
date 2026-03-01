import 'package:flutter/material.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';
import 'package:prokemn_app/feature/pokemon_description/data/model/pokemon_detail_model.dart';

class GenderSection extends StatelessWidget {
  const GenderSection({super.key, required this.detail});

  final PokemonDetailModel detail;

  @override
  Widget build(BuildContext context) {
    if (detail.malePercent == 0 && detail.femalePercent == 0) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        Text('GÉNERO', style: AppTypography.bodyLarge.copyWith()),
        const SizedBox(height: AppSpacing.sm),
        ClipRRect(
          borderRadius: BorderRadius.circular(AppSpacing.radiusFull),
          child: Column(
            children: [
              SizedBox(
                height: 10,
                child: Row(
                  children: [
                    Expanded(
                      flex: (detail.malePercent * 10).round() + 1,
                      child: Container(
                        alignment: .center,
                        color: AppColors.info,
                      ),
                    ),
                    Expanded(
                      flex: (detail.femalePercent * 10).round() + 1,
                      child: Container(
                        alignment: .center,
                        color: AppColors.secondaryLight,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Text(
              '♂ ${detail.malePercent.toStringAsFixed(1)}%',
              style: AppTypography.bodySmall,
            ),
            Text(
              '♀ ${detail.femalePercent.toStringAsFixed(1)}%',
              style: AppTypography.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}
