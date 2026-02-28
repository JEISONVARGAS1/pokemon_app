import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prokemn_app/feature/home/data/model/pokemon_model.dart';

part 'favorites_state.freezed.dart';

@freezed
sealed class FavoritesState with _$FavoritesState {
  const factory FavoritesState({
    @Default(false) bool isLoading,
    @Default('') String searchQuery,
    @Default({}) Set<int> favorites,
    @Default([]) List<PokemonModel> pokemonList,
    required TextEditingController searchController,
  }) = FavoritesStateData;

  factory FavoritesState.init() =>
      FavoritesState(searchController: TextEditingController());
}
