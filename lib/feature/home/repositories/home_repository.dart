import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/core/model/query_response_model.dart';
import 'package:prokemn_app/feature/home/data/home_api.dart';
import 'package:prokemn_app/feature/home/data/home_api_interface.dart';
import 'package:prokemn_app/feature/home/data/model/pokemon_model.dart';

abstract class HomeRepository {
  Future<QueryResponseModel<List<PokemonModel>>> fetchPokemonList({
    int limit = 20,
    int offset = 0,
  });
}

class _HomeRepository implements HomeRepository {
  final HomeApiInterface _homeApi;

  _HomeRepository(HomeApiInterface homeApi) : _homeApi = homeApi;

  @override
  Future<QueryResponseModel<List<PokemonModel>>> fetchPokemonList({
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      final res = await _homeApi.fetchPokemonList(limit: limit, offset: offset);
      return QueryResponseModel(data: res);
    } catch (e) {
      return QueryResponseModel(
        isSuccessful: false,
        message: e.toString(),
        data: <PokemonModel>[],
      );
    }
  }
}

final homeRepositoryProvider = Provider<HomeRepository>(
  (Ref ref) => _HomeRepository(ref.read(homeApiProvider)),
);
