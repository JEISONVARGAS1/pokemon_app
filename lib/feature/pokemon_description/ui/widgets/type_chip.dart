import 'package:flutter/material.dart';
import 'package:prokemn_app/feature/home/ui/widgets/pokemon_type_utils.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';

class TypeChip extends StatelessWidget {
  const TypeChip({
    super.key,
    required this.typeKey,
  });

  final String typeKey;

  @override
  Widget build(BuildContext context) {
    final color = getTypeColor(typeKey);
    final borderColor = getTypeBorderColor(typeKey);
    final name = getTypeName(typeKey);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(_getTypeIcon(typeKey), size: 16, color: AppColors.surface),
          const SizedBox(width: 6),
          Text(
            name,
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.surface,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

IconData _getTypeIcon(String type) {
  switch (type) {
    case 'grass':
      return Icons.eco;
    case 'fire':
      return Icons.local_fire_department;
    case 'water':
      return Icons.water_drop;
    case 'poison':
      return Icons.science;
    case 'electric':
      return Icons.bolt;
    case 'flying':
      return Icons.flutter_dash;
    case 'bug':
      return Icons.bug_report;
    case 'normal':
      return Icons.circle;
    case 'ice':
      return Icons.ac_unit;
    case 'psychic':
      return Icons.psychology;
    case 'ground':
      return Icons.terrain;
    case 'rock':
      return Icons.diamond;
    case 'dragon':
      return Icons.pets;
    case 'dark':
      return Icons.dark_mode;
    case 'fairy':
      return Icons.auto_awesome;
    case 'steel':
      return Icons.settings;
    case 'fighting':
      return Icons.sports_mma;
    case 'ghost':
      return Icons.visibility_off;
    default:
      return Icons.circle;
  }
}
