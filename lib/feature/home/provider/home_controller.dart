import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:prokemn_app/core/data/provider/global_controller.dart';
import 'package:prokemn_app/feature/home/data/model/pokemon_model.dart';
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
      _setState(state.value!.copyWith(isLoading: true));
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

  Future<void> _getPokemonList() async {
    final result = await repository.fetchPokemonList(limit: 20, offset: 0);

    if (result.isSuccessful) {
      _setState(
        state.value!.copyWith(pokemonList: result.data!, isLoading: false),
      );
    } else {
      _setState(state.value!.copyWith(isLoading: false));
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
