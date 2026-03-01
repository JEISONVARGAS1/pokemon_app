import 'package:flutter/material.dart';
import 'package:prokemn_app/feature/home/data/model/pokemon_model.dart';
import 'package:prokemn_app/feature/home/ui/widgets/pokemon_card.dart';

class PokemonList extends StatelessWidget {
  final Set<int> favorites;
  final List<PokemonModel> pokemon;
  final void Function(int id) onFavoriteTap;
  final void Function(PokemonModel pokemon)? onPokemonTap;

  const PokemonList({
    super.key,
    required this.pokemon,
    required this.favorites,
    required this.onFavoriteTap,
    this.onPokemonTap,
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
      padding: const EdgeInsets.only(bottom: 16),
      itemCount: pokemon.length,
      itemBuilder: (context, index) {
        final p = pokemon[index];
        return TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: 1),
          duration: Duration(milliseconds: 300 + (index * 50)),
          curve: Curves.easeOut,
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(0, 20 * (1 - value)),
                child: child,
              ),
            );
          },
          child: PokemonCard(
            pokemon: p,
            isFavorite: favorites.contains(p.id),
            onFavoriteTap: () => onFavoriteTap(p.id),
            onTap: onPokemonTap != null ? () => onPokemonTap!(p) : null,
          ),
        );
      },
    );
  }
}
