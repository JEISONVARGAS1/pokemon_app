import 'package:flutter/material.dart';
import 'package:prokemn_app/uikit/utils/app_typography.dart';

class TrainerSkillsContent extends StatelessWidget {
  final List<(IconData, String, Color)> skills;

  const TrainerSkillsContent({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      alignment: WrapAlignment.center,
      children: skills
          .map(
            (item) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: .circle,
                    border: .all(color: item.$3, width: 2),
                    color: item.$3.withValues(alpha: 0.3),
                  ),
                  child: Icon(item.$1, color: item.$3, size: 28),
                ),
                const SizedBox(height: 4),
                Text(item.$2, style: AppTypography.caption),
              ],
            ),
          )
          .toList(),
    );
  }
}
