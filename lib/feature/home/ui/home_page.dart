import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:prokemn_app/core/widget/loading_page.dart';
import 'package:prokemn_app/core/widget/pokemon_list.dart';
import 'package:prokemn_app/feature/home/provider/home_controller.dart';
import 'package:prokemn_app/feature/home/ui/widgets/pokedex_search_bar.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => ref.read(homeControllerProvider.notifier).initPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeControllerProvider).value!;
    final provider = ref.read(homeControllerProvider.notifier);

    if (state.errorMessage.isNotEmpty) {
      return InformationView(
        buttonLabel: "Reintentar",
        isLoading: state.isLoading, 
        title: "Algo salió mal...",
        description: state.errorMessage,
        image: Image.asset('assets/image/error.png'),
        onButtonPressed: () => provider.initPage(),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text('Pokédex'),
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
