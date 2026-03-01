import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prokemn_app/feature/home/data/model/pokemon_model.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default('') String searchQuery,
    @Default({}) Set<int> favorites,
    @Default('') String errorMessage,
    @Default([]) List<PokemonModel> pokemonList,
    required TextEditingController searchController,
  }) = HomeStateData;

  factory HomeState.init() =>
      HomeState(searchController: TextEditingController());
}
