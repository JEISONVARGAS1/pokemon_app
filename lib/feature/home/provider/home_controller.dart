import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:prokemn_app/feature/home/provider/model/home_state.dart';
import 'package:prokemn_app/feature/home/repositories/home_repository.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  FutureOr<HomeState> build() {
    return HomeState.init();
  }

  HomeRepository get repository => ref.read(homeRepositoryProvider);

  Future<void> initPage() async {
    final current = state.value ?? HomeState.init();
    _setState(current.copyWith(isLoading: true));

    final result = await repository.fetchPokemonList(limit: 20, offset: 0);

    if (result.isSuccessful && result.data != null) {
      _setState((state.value ?? current).copyWith(
        pokemonList: result.data!,
        isLoading: false,
      ));
    } else {
      _setState((state.value ?? current).copyWith(isLoading: false));
    }
  }

  void setSearchQuery(String query) {
    _setState(state.value!.copyWith(searchQuery: query));
  }

  void toggleFavorite(int pokemonId) {
    final current = state.value!.favorites.toSet();
    if (current.contains(pokemonId)) {
      current.remove(pokemonId);
    } else {
      current.add(pokemonId);
    }
    _setState(state.value!.copyWith(favorites: current));
  }

  void _setState(HomeState newState) {
    state = AsyncValue.data(newState);
  }
}
