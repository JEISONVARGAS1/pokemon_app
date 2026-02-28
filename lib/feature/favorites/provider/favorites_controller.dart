import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:prokemn_app/core/data/provider/global_controller.dart';
import 'package:prokemn_app/feature/home/data/model/pokemon_model.dart';
import 'package:prokemn_app/feature/favorites/provider/model/favorites_state.dart';

part 'favorites_controller.g.dart';

@riverpod
class FavoritesController extends _$FavoritesController {
  @override
  FutureOr<FavoritesState> build() {
    ref.keepAlive();
    ref.onDispose(() {
      state.value!.searchController.dispose();
    });

    return FavoritesState.init();
  }

  GlobalController get globalController =>
      ref.read(globalControllerProvider.notifier);

  Future<void> initPage() async {
    if (state.value!.pokemonList.isEmpty) _getPokemonList();
  }

  Future<void> _getPokemonList() async {
    ref.listen(globalControllerProvider, (previous, next) {
      final pokemonList = next.value!.pokemonListFavorites;
      final current = pokemonList.map((p) => p.id).toSet();
      _setState(
        state.value!.copyWith(pokemonList: pokemonList, favorites: current),
      );
    }, fireImmediately: true);
  }

  void setSearchQuery(String query) {
    _setState(state.value!.copyWith(searchQuery: query));
  }

  void toggleFavorite(int pokemonId) {
    final current = state.value!.favorites.toSet();

    current.remove(pokemonId);

    final pokemon = state.value!.pokemonList.firstWhere(
      (p) => p.id == pokemonId,
    );

    globalController.removePokemonListFavorites(pokemon);
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

  void _setState(FavoritesState newState) => state = AsyncValue.data(newState);
}
