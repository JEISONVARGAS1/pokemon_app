import 'package:flutter/material.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';
import 'package:prokemn_app/feature/home/data/model/pokemon_model.dart';
import 'package:prokemn_app/feature/home/ui/widgets/pokemon_type_utils.dart';

class PokemonCard extends StatefulWidget {
  final PokemonModel pokemon;
  final bool isFavorite;
  final VoidCallback onFavoriteTap;
  final VoidCallback? onTap;

  const PokemonCard({
    super.key,
    required this.pokemon,
    required this.isFavorite,
    required this.onFavoriteTap,
    this.onTap,
  });

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late AnimationController _jumpController;
  late Animation<double> _jumpAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 0.95,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();

    _jumpController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _jumpAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0,
          end: 1,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1,
          end: 0,
        ).chain(CurveTween(curve: Curves.elasticOut)),
        weight: 1,
      ),
    ]).animate(_jumpController);
  }

  void _onFavoriteTap() {
    widget.onFavoriteTap();
    _jumpController.forward(from: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    _jumpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cardColor = getCardBackgroundColor(widget.pokemon.types.map((t) => t.key).toList());

    return ScaleTransition(
      scale: _scaleAnimation,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 130,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: cardColor.withValues(alpha: 0.35),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.06),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: .min,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        widget.pokemon.pokedexNumber,
                        style: AppTypography.bodySmall,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.pokemon.formattedName,
                        style: AppTypography.h3,
                      ),
                      const SizedBox(height: 8),
                      SingleChildScrollView(
                        child: Row(
                          spacing: 6,
                          children: List.generate(
                            widget.pokemon.types.length,
                            (index) =>
                                _TypeTag(typeKey: widget.pokemon.types[index].key),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: cardColor.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.5),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Icon(
                        widget.pokemon.types.first.icon,
                        size: 130,
                        color: getTypeColor(
                          widget.pokemon.types.first.key,
                        ).withValues(alpha: 0.5),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: GestureDetector(
                          onTap: _onFavoriteTap,
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              padding: const EdgeInsets.all(4),
                              child: Icon(
                                widget.isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                key: ValueKey(widget.isFavorite),
                                color: widget.isFavorite
                                    ? Colors.red
                                    : Colors.white,
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                      AnimatedBuilder(
                        animation: _jumpAnimation,
                        builder: (context, child) {
                          final scale = 1.0 + (_jumpAnimation.value * 0.25);
                          final translateY = -12 * _jumpAnimation.value;
                          return Transform.translate(
                            offset: Offset(0, translateY),
                            child: Transform.scale(scale: scale, child: child),
                          );
                        },
                        child: Image.network(
                          widget.pokemon.imageUrl,
                          width: 85,
                          height: 85,
                          fit: BoxFit.contain,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const Center(
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) => Icon(
                            Icons.image_not_supported,
                            size: 40,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TypeTag extends StatelessWidget {
  final String typeKey;

  const _TypeTag({required this.typeKey});

  @override
  Widget build(BuildContext context) {
    final color = getTypeColor(typeKey);
    final borderColor = getTypeBorderColor(typeKey);
    final name = getTypeName(typeKey);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(2),
            child: Icon(getTypeIcon(typeKey), size: 14, color: color),
          ),

          const SizedBox(width: 4),
          Text(
            name,
            style: AppTypography.bodyMedium.copyWith(color: AppColors.surface),
          ),
        ],
      ),
    );
  }
}
