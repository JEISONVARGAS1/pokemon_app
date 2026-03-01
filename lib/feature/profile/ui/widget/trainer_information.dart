import 'package:flutter/material.dart';
import 'package:prokemn_app/uikit/utils/app_colors.dart';
import 'package:prokemn_app/uikit/utils/app_typography.dart';
import 'package:prokemn_app/core/extension/context_extension.dart';

class TrainerInformation extends StatelessWidget {
  final String name;
  final String role;
  final String location;

  const TrainerInformation({
    super.key,
    required this.name,
    required this.role,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _InfoRow(label: context.l10n.labelName, value: name),
        const SizedBox(height: 8),
        _InfoRow(label: context.l10n.labelRole, value: role),
        const SizedBox(height: 8),
        _InfoRow(label: context.l10n.labelLocation, value: location),
      ],
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 90,
          child: Text(
            label,
            style: AppTypography.label.copyWith(color: AppColors.textSecondary),
          ),
        ),
        Expanded(child: Text(value, style: AppTypography.bodyMedium)),
      ],
    );
  }
}
