import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prokemn_app/feature/pokemon_description/data/model/pokemon_detail_model.dart';

part 'pokemon_description_state.freezed.dart';

@freezed
sealed class PokemonDescriptionState with _$PokemonDescriptionState {
  const factory PokemonDescriptionState({
    @Default(false) bool isLoading,
    @Default(false) bool isFavorite,
    @Default('') String errorMessage,
    required PokemonDetailModel detail,
    @Default(320.0) double expandedHeight,
    required ScrollController scrollController,
    required ValueNotifier<bool> showTitleNotifier,
  }) = PokemonDescriptionStateData;

  factory PokemonDescriptionState.init() => PokemonDescriptionState(
    detail: PokemonDetailModel.init(),
    scrollController: ScrollController(),
    showTitleNotifier: ValueNotifier<bool>(false),
  );
}
