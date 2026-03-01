import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:prokemn_app/core/model/pokemon_model.dart';
import 'package:prokemn_app/core/data/provider/model/global_state.dart';

part 'global_controller.g.dart';

@riverpod
class GlobalController extends _$GlobalController {
  @override
  Future<GlobalState> build() async {
    ref.keepAlive();
   return  GlobalState.init();
  }

  void savePokemonListFavorites(List<PokemonModel> pokemonList) {
    final currentState = state.value ?? GlobalState.init();
    _setState(currentState.copyWith(pokemonListFavorites: pokemonList));
  }

  void removePokemonListFavorites(PokemonModel pokemon) {
    final currentState = state.value ?? GlobalState.init();
    final pokemonList = currentState.pokemonListFavorites.toList();
    pokemonList.removeWhere((item) => item.id == pokemon.id);
    _setState(currentState.copyWith(pokemonListFavorites: pokemonList));
  }

  void toggleFavorite(PokemonModel pokemon) {
    final currentState = state.value ?? GlobalState.init();
    final pokemonList = currentState.pokemonListFavorites.toList();
    final index = pokemonList.indexWhere((p) => p.id == pokemon.id);
    if (index >= 0) {
      pokemonList.removeAt(index);
    } else {
      pokemonList.add(pokemon);
    }
    _setState(currentState.copyWith(pokemonListFavorites: pokemonList));
  }

  bool isFavorite(int pokemonId) {
    final currentState = state.value ?? GlobalState.init();
    return currentState.pokemonListFavorites.any((p) => p.id == pokemonId);
  }

  void _setState(GlobalState newState) => state = AsyncValue.data(newState);
}
