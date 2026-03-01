import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:prokemn_app/core/extension/context_extension.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/core/widget/loading_page.dart';
import 'package:prokemn_app/core/widget/pokemon_list.dart';
import 'package:prokemn_app/feature/home/provider/home_controller.dart';
import 'package:prokemn_app/feature/home/ui/widgets/pokedex_search_bar.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => ref.read(homeControllerProvider.notifier).initPage(),
    );
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final state = ref.read(homeControllerProvider).value;
    if (state == null || state.searchQuery.isNotEmpty) return;

    final position = _scrollController.position;
    if (position.maxScrollExtent > 0 &&
        position.pixels >= position.maxScrollExtent * 0.7) {
      ref.read(homeControllerProvider.notifier).loadNextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeControllerProvider).value!;
    final provider = ref.read(homeControllerProvider.notifier);

    if (state.errorMessage.isNotEmpty) {
      return InformationView(
        isLoading: state.isLoading, 
        buttonLabel: context.l10n.retry,
        description: state.errorMessage,
        title: context.l10n.somethingWentWrong,
        image: Image.asset('assets/image/error.png'),
        onButtonPressed: () => provider.initPage(),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text(context.l10n.pokedex),
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
                scrollController: _scrollController,
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
