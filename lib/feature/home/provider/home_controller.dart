import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:prokemn_app/core/data/provider/global_controller.dart';
import 'package:prokemn_app/core/model/pokemon_model.dart';
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
    });

    return HomeState.init();
  }

  HomeRepository get repository => ref.read(homeRepositoryProvider);
  GlobalController get globalController =>
      ref.read(globalControllerProvider.notifier);

  Future<void> initPage() async {
    if (state.value!.pokemonList.isEmpty) {
      _setState(state.value!.copyWith(
        isLoading: true,
        page: 0,
        hasReachedEnd: false,
      ));
      await _getPokemonList();
      _listenFavorites();
    }
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
        state.value!.copyWith(
          isLoadingNextPage: false,
          hasReachedEnd: true,
        ),
      );
    }
  }

  void setSearchQuery(String query) {
    _setState(state.value!.copyWith(searchQuery: query));
  }

  void toggleFavorite(int pokemonId) {
    final current = state.value!.favorites.toSet();
    if (current.contains(pokemonId)) {
      current.remove(pokemonId);
    } else {
      current.add(pokemonId);
    }
    final pokemonList = current
        .map((pokemonId) => state.value!.pokemonList[pokemonId - 1])
        .toList();
    _setState(state.value!.copyWith(favorites: current));
    globalController.savePokemonListFavorites(pokemonList);
  }

  List<PokemonModel> filterPokemon(List<PokemonModel> list, String query) {
    if (query.isEmpty) return list;
    final lower = query.toLowerCase();
    return list.where((pokemon) {
      final name = pokemon.name.toLowerCase();
      final formattedName = pokemon.formattedName.toLowerCase();
      final pokedexNumber = pokemon.pokedexNumber.toLowerCase();

      final isMatchName = name.contains(lower);
      final isMatchFormattedName = formattedName.contains(lower);
      final isMatchPokedexNumber = pokedexNumber.contains(lower);

      return isMatchName || isMatchFormattedName || isMatchPokedexNumber;
    }).toList();
  }

  void _setState(HomeState newState) => state = AsyncValue.data(newState);
}
