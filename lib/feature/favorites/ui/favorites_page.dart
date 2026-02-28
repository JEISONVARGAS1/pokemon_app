import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/core/widget/loading_page.dart';
import 'package:prokemn_app/core/widget/pokemon_list.dart';
import 'package:prokemn_app/feature/home/ui/widgets/pokedex_search_bar.dart';
import 'package:prokemn_app/feature/favorites/provider/favorites_controller.dart';

class FavoritesPage extends ConsumerStatefulWidget {
  const FavoritesPage({super.key});

  @override
  ConsumerState<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends ConsumerState<FavoritesPage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => ref.read(favoritesControllerProvider.notifier).initPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(favoritesControllerProvider).value!;
    final provider = ref.read(favoritesControllerProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text('Favoritos'),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.grey.shade50,
      ),
      body: LoadingPage(
        isLoading: state.isLoading,
        child: Column(
          children: [
            PokedexSearchBar(
              controller: state.searchController,
              onSearchTap: () =>
                  provider.setSearchQuery(state.searchController.text),
            ),
            Expanded(
              child: PokemonList(
                favorites: state.favorites,
                onFavoriteTap: provider.toggleFavorite,
                pokemon: provider.filterPokemon(
                  state.pokemonList,
                  state.searchQuery,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
