import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/core/widget/loading_page.dart';
import 'package:prokemn_app/core/widget/pokemon_list.dart';
import 'package:prokemn_app/core/extension/context_extension.dart';
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

    if (state.pokemonList.isEmpty) {
      return InformationView(
        isLoading: state.isLoading,
        image: Image.asset('assets/image/error.png'),
        title: context.l10n.noFavoritesTitle,
        description: context.l10n.noFavoritesDescription,
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text(context.l10n.favorites),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.grey.shade50,
      ),
      body: LoadingPage(
        isLoading: state.isLoading,
        child: Column(
          children: [
            PokedexSearchBar(
              controller: state.searchController,
            ),
            Expanded(
              child: PokemonList(
                favorites: state.favorites,
                onFavoriteTap: provider.toggleFavorite,
                onPokemonTap: (p) => context.push('/pokemon/${p.id}'),
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
