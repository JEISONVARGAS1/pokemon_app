import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prokemn_app/core/model/pokemon_model.dart';
import 'package:prokemn_app/core/util/debouncer_util.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int page,
    @Default(false) bool isLoading,
    @Default('') String searchQuery,
    @Default({}) Set<int> favorites,
    @Default(false) bool isFiltering,
    required DebouncerUtil debouncer,
    @Default('') String errorMessage,
    @Default(false) bool hasReachedEnd,
    @Default(false) bool isLoadingNextPage,
    @Default({}) Set<String> selectedTypes,
    required PanelController panelController,
    required ScrollController scrollController,
    @Default([]) List<PokemonModel> pokemonList,
    required TextEditingController searchController,
    @Default([]) List<PokemonModel> pokemonListFiltered,
  }) = HomeStateData;

  factory HomeState.init() => HomeState(
        scrollController: ScrollController(),
        debouncer: DebouncerUtil(seconds: 1),
        searchController: TextEditingController(),
        panelController: PanelController(),
      );
}
