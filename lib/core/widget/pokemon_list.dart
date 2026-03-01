import 'package:flutter/material.dart';
import 'package:prokemn_app/core/model/pokemon_model.dart';
import 'package:prokemn_app/feature/home/ui/widgets/pokemon_card.dart';

class PokemonList extends StatelessWidget {
  final Set<int> favorites;
  final List<PokemonModel> pokemon;
  final void Function(int id) onFavoriteTap;
  final void Function(PokemonModel pokemon)? onPokemonTap;
  final ScrollController? scrollController;

  const PokemonList({
    super.key,
    required this.pokemon,
    required this.favorites,
    required this.onFavoriteTap,
    this.onPokemonTap,
    this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    if (pokemon.isEmpty) {
      return Center(
        child: Text(
          'No se encontraron Pokémon',
          style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
        ),
      );
    }

    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.only(bottom: 16),
      itemCount: pokemon.length,
      itemBuilder: (context, index) {
        final p = pokemon[index];
        return _AnimatedPokemonCard(
          key: ValueKey(p.id),
          pokemon: p,
          index: index,
          isFavorite: favorites.contains(p.id),
          onFavoriteTap: () => onFavoriteTap(p.id),
          onTap: onPokemonTap != null ? () => onPokemonTap!(p) : null,
        );
      },
    );
  }
}

class _AnimatedPokemonCard extends StatefulWidget {
  final PokemonModel pokemon;
  final bool isFavorite;
  final VoidCallback onFavoriteTap;
  final VoidCallback? onTap;
  final int index;

  const _AnimatedPokemonCard({
    super.key,
    required this.pokemon,
    required this.isFavorite,
    required this.onFavoriteTap,
    required this.onTap,
    required this.index,
  });

  @override
  State<_AnimatedPokemonCard> createState() => _AnimatedPokemonCardState();
}

class _AnimatedPokemonCardState extends State<_AnimatedPokemonCard>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300 + (widget.index * 50)),
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - _animation.value)),
            child: child,
          ),
        );
      },
      child: PokemonCard(
        pokemon: widget.pokemon,
        isFavorite: widget.isFavorite,
        onFavoriteTap: widget.onFavoriteTap,
        onTap: widget.onTap,
      ),
    );
  }
}
