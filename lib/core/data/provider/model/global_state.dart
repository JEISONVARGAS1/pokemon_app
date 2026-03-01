import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prokemn_app/core/model/pokemon_model.dart';

part 'global_state.freezed.dart';

@freezed
sealed class GlobalState with _$GlobalState {
  const factory GlobalState({
    @Default([]) List<PokemonModel> pokemonListFavorites,
  }) = GlobalStateData;

  factory GlobalState.init() => GlobalState();
}
