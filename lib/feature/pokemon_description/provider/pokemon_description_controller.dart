import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:prokemn_app/core/data/provider/global_controller.dart';
import 'package:prokemn_app/feature/home/ui/widgets/pokemon_type_utils.dart';
import 'package:prokemn_app/feature/pokemon_description/provider/model/pokemon_description_state.dart';
import 'package:prokemn_app/feature/pokemon_description/repositories/pokemon_description_repository.dart';

part 'pokemon_description_controller.g.dart';

@riverpod
class PokemonDescriptionController extends _$PokemonDescriptionController {
  @override
  FutureOr<PokemonDescriptionState> build(int pokemonId) {
    ref.keepAlive();
    ref.onDispose(_dispose);
    _listenFavorites();

    return _loadDetail(pokemonId);
  }

  void _listenFavorites() {
    ref.listen(globalControllerProvider, (previous, next) {
      final isFavorite = next.value!.pokemonListFavorites.any((p) => p.id == pokemonId);
      _setState(state.value!.copyWith(isFavorite: isFavorite));
    });
  }

  void _dispose() {
    final stateValue = state.value;
    if (stateValue != null) {
      stateValue.scrollController.removeListener(_onScroll);
      stateValue.scrollController.dispose();
      stateValue.showTitleNotifier.dispose();
    }
  }

  PokemonDescriptionRepository get repository =>
      ref.read(pokemonDescriptionRepositoryProvider);

  GlobalController get globalController =>
      ref.read(globalControllerProvider.notifier);

  Future<PokemonDescriptionState> _loadDetail(int pokemonId) async {
    final currentState = state.value ?? PokemonDescriptionState.init();

    _setState(currentState.copyWith(isLoading: true, errorMessage: ''));

    currentState.scrollController.removeListener(_onScroll);

    final result = await repository.fetchPokemonDetail(pokemonId);

    if (result.isSuccessful && result.data != null) {
      currentState.scrollController.addListener(_onScroll);
      _setState(currentState.copyWith(isLoading: false, detail: result.data!));
    } else {
      _setState(
        currentState.copyWith(
          isLoading: false,
          errorMessage: result.exceptionCode.message,
        ),
      );
    }
    return state.value!;
  }

  Future<void> retry() async => _loadDetail(pokemonId);

  void toggleFavorite() {
    final stateValue = state.value;
    if (stateValue != null) {
      globalController.toggleFavorite(stateValue.detail.pokemon);
      _setState(stateValue.copyWith(isFavorite: !stateValue.isFavorite));
    }
  }

  Color headerColor() {
    final stateValue = state.value;
    if (stateValue == null) return Colors.grey;
    return getCardBackgroundColor(
      stateValue.detail.pokemon.types.map((t) => t.key).toList(),
    );
  }

  bool isFavorite(int pokemonId) => globalController.isFavorite(pokemonId);

  void _onScroll() {
    final stateValue = state.value;
    if (stateValue == null) return;
    final collapsed =
        stateValue.scrollController.offset >=
        stateValue.expandedHeight - kToolbarHeight;
    if (stateValue.showTitleNotifier.value != collapsed) {
      stateValue.showTitleNotifier.value = collapsed;
    }
  }

  void _setState(PokemonDescriptionState data) => state = AsyncValue.data(data);
}
