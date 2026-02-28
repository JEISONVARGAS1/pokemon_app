import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prokemn_app/feature/home/data/model/pokemon_model.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default([]) List<PokemonModel> pokemonList,
    @Default('') String searchQuery,
    @Default({}) Set<int> favorites,
  }) = HomeStateData;

  factory HomeState.init() => const HomeState();
}
