import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prokemn_app/core/model/pokemon_model.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default('') String searchQuery,
    @Default({}) Set<int> favorites,
    @Default('') String errorMessage,
    @Default([]) List<PokemonModel> pokemonList,
    @Default(0) int page,
    @Default(false) bool isLoadingNextPage,
    @Default(false) bool hasReachedEnd,
    required TextEditingController searchController,
  }) = HomeStateData;

  factory HomeState.init() =>
      HomeState(searchController: TextEditingController());
}
