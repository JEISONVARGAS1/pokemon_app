import 'dart:async';
import 'package:prokemn_app/core/model/pokemon_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:prokemn_app/core/data/provider/global_controller.dart';
import 'package:prokemn_app/feature/home/provider/model/home_state.dart';
import 'package:prokemn_app/feature/home/repositories/home_repository.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  FutureOr<HomeState> build() {
    ref.keepAlive();
    ref.onDispose(() {
      state.value!.searchController.dispose();
      state.value!.scrollController.removeListener(_onScroll);
      state.value!.scrollController.dispose();
    });

    return HomeState.init();
  }

  HomeRepository get repository => ref.read(homeRepositoryProvider);
  GlobalController get globalController =>
      ref.read(globalControllerProvider.notifier);

  Future<void> initPage() async {
    state.value!.scrollController.addListener(_onScroll);
    if (state.value!.pokemonList.isEmpty) {
      _setState(
        state.value!.copyWith(page: 0, isLoading: true, hasReachedEnd: false),
      );
      await _getPokemonList();
      _listenFavorites();
      _listenSearchQuery();
    }
  }

  void _listenSearchQuery() {
    state.value!.searchController.addListener(() {
      state.value!.debouncer.run(() async {
        final result = await repository.fetchPokemonByNameLike(
          state.value!.searchController.text,
        );
        if (result.isSuccessful) {
          _setState(state.value!.copyWith(pokemonListFiltered: result.data!));
        } else {
          _setState(
            state.value!.copyWith(errorMessage: result.exceptionCode.message),
          );
        }
      });
    });
  }

  void _listenFavorites() {
    ref.listen(globalControllerProvider, (previous, next) {
      final currentLength = state.value!.pokemonList.length;
      final nextLength = next.value!.pokemonListFavorites.length;

      if (currentLength == nextLength) return;
      final pokemonList = next.value!.pokemonListFavorites;
      final current = pokemonList.map((p) => p.id).toSet();
      _setState(state.value!.copyWith(favorites: current));
    });
  }

  static const int _pageSize = 20;

  Future<void> _getPokemonList() async {
    final result = await repository.fetchPokemonList(
      limit: _pageSize,
      offset: 0,
    );

    if (result.isSuccessful) {
      _setState(
        state.value!.copyWith(
          isLoading: false,
          errorMessage: '',
          pokemonList: result.data!,
          page: 0,
          hasReachedEnd: result.data!.length < _pageSize,
        ),
      );
    } else {
      _setState(
        state.value!.copyWith(
          isLoading: false,
          errorMessage:
              'No pudimos cargar la información en este momento. Verifica tu conexión o intenta nuevamente más tarde.',
        ),
      );
    }
  }

  Future<void> loadNextPage() async {
    final currentState = state.value!;
    if (currentState.isLoadingNextPage ||
        currentState.pokemonList.isEmpty ||
        currentState.hasReachedEnd) {
      return;
    }

    _setState(currentState.copyWith(isLoadingNextPage: true));
    final nextPage = currentState.page + 1;
    final result = await repository.fetchPokemonList(
      limit: _pageSize,
      offset: nextPage * _pageSize,
    );

    if (result.isSuccessful && result.data!.isNotEmpty) {
      final newList = [...currentState.pokemonList, ...result.data!];
      final hasReachedEnd = result.data!.length < _pageSize;
      _setState(
        state.value!.copyWith(
          pokemonList: newList,
          page: nextPage,
          isLoadingNextPage: false,
          hasReachedEnd: hasReachedEnd,
        ),
      );
    } else {
      _setState(
        state.value!.copyWith(isLoadingNextPage: false, hasReachedEnd: true),
      );
    }
  }

  void toggleFavorite(int pokemonId) {
    final list =
        state.value!.searchController.text.isNotEmpty ||
            state.value!.isFiltering
        ? state.value!.pokemonListFiltered
        : state.value!.pokemonList;

    final current = state.value!.favorites.toSet();
    if (current.contains(pokemonId)) {
      current.remove(pokemonId);
    } else {
      current.add(pokemonId);
    }

    final globalFavorites =
        ref.read(globalControllerProvider).value?.pokemonListFavorites ?? [];
    final pokeList = <PokemonModel>[];
    for (final id in current) {
      final fromList = list.where((p) => p.id == id).firstOrNull;
      if (fromList != null) {
        pokeList.add(fromList);
      } else {
        final fromGlobal = globalFavorites.where((p) => p.id == id).firstOrNull;
        if (fromGlobal != null) pokeList.add(fromGlobal);
      }
    }

    _setState(state.value!.copyWith(favorites: current));
    globalController.savePokemonListFavorites(pokeList);
  }

  Future<void> applyTypeFilters(Set<String> types) async {
    _setState(state.value!.copyWith(isFiltering: true));
    final result = await repository.fetchPokemonByTypes(types: types.toList());
    if (result.isSuccessful) {
      _setState(state.value!.copyWith(pokemonListFiltered: result.data!));
    } else {
      _setState(
        state.value!.copyWith(errorMessage: result.exceptionCode.message),
      );
    }
  }

  void clearFilters() {
    state.value!.searchController.clear();
    _setState(
      state.value!.copyWith(isFiltering: false, pokemonListFiltered: []),
    );
  }

  void openPanel() {
    state.value?.panelController.open();
  }

  void closePanel() {
    state.value?.panelController.close();
  }

  List<PokemonModel> filterPokemon(
    List<PokemonModel> list,
    String query, {
    Set<String>? typeFilters,
  }) {
    var result = list;

    if (typeFilters != null && typeFilters.isNotEmpty) {
      result = result.where((pokemon) {
        return pokemon.types.any((t) => typeFilters.contains(t.key));
      }).toList();
    }

    if (query.isEmpty) return result;
    final lower = query.toLowerCase();
    return result.where((pokemon) {
      final name = pokemon.name.toLowerCase();
      final formattedName = pokemon.formattedName.toLowerCase();
      final pokedexNumber = pokemon.pokedexNumber.toLowerCase();

      final isMatchName = name.contains(lower);
      final isMatchFormattedName = formattedName.contains(lower);
      final isMatchPokedexNumber = pokedexNumber.contains(lower);

      return isMatchName || isMatchFormattedName || isMatchPokedexNumber;
    }).toList();
  }

  void _onScroll() {
    final state = ref.read(homeControllerProvider).value;
    if (state == null || state.searchQuery.isNotEmpty) return;

    final position = state.scrollController.position;
    if (position.maxScrollExtent > 0 &&
        position.pixels >= position.maxScrollExtent * 0.7) {
      loadNextPage();
    }
  }

  void _setState(HomeState newState) => state = AsyncValue.data(newState);
}
