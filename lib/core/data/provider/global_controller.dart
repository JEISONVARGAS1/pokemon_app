import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:prokemn_app/feature/home/data/model/pokemon_model.dart';
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

  void _setState(GlobalState newState) => state = AsyncValue.data(newState);
}
