import 'package:flutter/material.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';
import 'package:prokemn_app/core/model/pokemon_detail_model.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key, required this.detail});

  final PokemonDetailModel detail;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 2.2,
      mainAxisSpacing: AppSpacing.md,
      crossAxisSpacing: AppSpacing.md,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _StatItem(
          icon: Icons.notifications_none_outlined,
          label: 'PESO',
          value: detail.weightFormatted,
        ),
        _StatItem(
          icon: Icons.height,
          label: 'ALTURA',
          value: detail.heightFormatted,
        ),
        _StatItem(
          icon: Icons.category,
          label: 'CATEGORÍA',
          value: detail.category,
        ),
        _StatItem(
          icon: Icons.auto_awesome,
          label: 'HABILIDAD',
          value: detail.ability,
        ),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      mainAxisAlignment: .center,
      children: [
        Row(
          children: [
            Icon(icon, size: 24, color: AppColors.textSecondary),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                mainAxisAlignment: .center,
                children: [
                  Text(
                    label,
                    style: AppTypography.buttonSecondary.copyWith(
                      fontWeight: .w300,
                    ),
                  ),
                  const SizedBox(height: 2),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        Container(
          width: .infinity,
          padding: .all(AppSpacing.sm),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
            border: Border.all(
              color: AppColors.textSecondary.withValues(alpha: 0.5),
            ),
          ),
          child: Text(
            value,
            textAlign: .center,
            overflow: .ellipsis,
            style: AppTypography.h4,
          ),
        ),
      ],
    );
  }
}
