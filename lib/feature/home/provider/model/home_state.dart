import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prokemn_app/core/model/pokemon_model.dart';
import 'package:prokemn_app/core/util/debouncer_util.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int page,
    @Default(false) bool isLoading,
    @Default('') String searchQuery,
    @Default({}) Set<int> favorites,
    required DebouncerUtil debouncer,
    @Default('') String errorMessage,
    @Default(false) bool hasReachedEnd,
    @Default(false) bool isLoadingNextPage,
    required ScrollController scrollController,
    @Default([]) List<PokemonModel> pokemonList,
    required TextEditingController searchController,
    @Default([]) List<PokemonModel> pokemonListFiltered,
  }) = HomeStateData;

  factory HomeState.init() => HomeState(
    scrollController: ScrollController(),
    debouncer: DebouncerUtil(seconds: 1),
    searchController: TextEditingController(),
  );
}
