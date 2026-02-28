import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/feature/home/data/model/pokemon_model.dart';
import 'package:prokemn_app/feature/home/provider/home_controller.dart';
import 'package:prokemn_app/feature/home/ui/widgets/pokedex_bottom_nav.dart';
import 'package:prokemn_app/feature/home/ui/widgets/pokedex_search_bar.dart';
import 'package:prokemn_app/feature/home/ui/widgets/pokemon_card.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final _searchController = TextEditingController();
  PokedexNavItem _currentNavItem = PokedexNavItem.pokedex;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => ref.read(homeControllerProvider.notifier).initPage(),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<PokemonModel> _filterPokemon(List<PokemonModel> list, String query) {
    if (query.isEmpty) return list;
    final lower = query.toLowerCase();
    return list
        .where((p) =>
            p.name.toLowerCase().contains(lower) ||
            p.formattedName.toLowerCase().contains(lower) ||
            p.pokedexNumber.toLowerCase().contains(lower))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final asyncState = ref.watch(homeControllerProvider);

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: asyncState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, size: 48, color: Colors.grey.shade600),
              const SizedBox(height: 16),
              Text('Error: $e', textAlign: TextAlign.center),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () =>
                    ref.read(homeControllerProvider.notifier).initPage(),
                child: const Text('Reintentar'),
              ),
            ],
          ),
        ),
        data: (state) => Column(
          children: [
            PokedexSearchBar(
              controller: _searchController,
              onChanged: (v) =>
                  ref.read(homeControllerProvider.notifier).setSearchQuery(v),
              onSearchTap: () {
                ref.read(homeControllerProvider.notifier).setSearchQuery(
                    _searchController.text);
              },
            ),
            Expanded(
              child: state.isLoading && state.pokemonList.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : _PokemonList(
                      pokemon: _filterPokemon(
                          state.pokemonList, state.searchQuery),
                      favorites: state.favorites,
                      onFavoriteTap: (id) => ref
                          .read(homeControllerProvider.notifier)
                          .toggleFavorite(id),
                    ),
            ),
            PokedexBottomNav(
              currentItem: _currentNavItem,
              onItemSelected: (item) => setState(() => _currentNavItem = item),
            ),
          ],
        ),
      ),
    );
  }
}

class _PokemonList extends StatelessWidget {
  final List<PokemonModel> pokemon;
  final Set<int> favorites;
  final void Function(int id) onFavoriteTap;

  const _PokemonList({
    required this.pokemon,
    required this.favorites,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    if (pokemon.isEmpty) {
      return Center(
        child: Text(
          'No se encontraron Pokémon',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
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
          ),
        );
      },
    );
  }
}
 