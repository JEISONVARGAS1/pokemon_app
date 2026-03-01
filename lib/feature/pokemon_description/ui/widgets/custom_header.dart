import 'package:flutter/material.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';
import 'package:prokemn_app/core/model/pokemon_detail_model.dart';
import 'package:prokemn_app/feature/pokemon_description/ui/widgets/header_curve_painter.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.pokemon});

  final PokemonDetailModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: SizedBox(
            height: 200,
            width: double.infinity,
            child: CustomPaint(
              painter: HeaderCurvePainter(
                fillColor: AppColors.surface,
                curveHeight: 200,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Icon(
            pokemon.pokemon.types.isNotEmpty
                ? pokemon.pokemon.types.first.icon
                : Icons.circle,
            size: 280,
            color: AppColors.surface.withValues(alpha: 0.7),
          ),
        ),
        Positioned(
          bottom: 40,
          child: Image.network(
            pokemon.pokemon.imageUrl,
            width: 160,
            height: 160,
            fit: BoxFit.contain,
            loadingBuilder: (context, child, progress) {
              if (progress == null) return child;
              return const SizedBox(
                width: 80,
                height: 80,
                child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
              );
            },
            errorBuilder: (context, error, stackTrace) => Icon(
              Icons.image_not_supported,
              size: 80,
              color: Colors.grey.shade400,
            ),
          ),
        ),
      ],
    );
  }
}
