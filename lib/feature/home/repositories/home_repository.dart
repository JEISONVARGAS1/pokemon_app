import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/core/error/exceptions.dart';
import 'package:prokemn_app/core/model/pokemon_model.dart';
import 'package:prokemn_app/feature/home/data/home_api.dart';
import 'package:prokemn_app/core/model/query_response_model.dart';
import 'package:prokemn_app/feature/home/data/home_api_interface.dart';

abstract class HomeRepository {
  Future<QueryResponseModel<List<PokemonModel>>> fetchPokemonList({
    int limit = 20,
    int offset = 0,
  });
  Future<QueryResponseModel<List<PokemonModel>>> fetchPokemonByTypes({
    required List<String> types,
  });
  Future<QueryResponseModel<List<PokemonModel>>> fetchPokemonByNameLike(
    String query,
  );
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
        exceptionCode: ExceptionCode(
          message: e.toString(),
          errorType: TypeErrorException.ERROR,
        ),
      );
    }
  }

  @override
  Future<QueryResponseModel<List<PokemonModel>>> fetchPokemonByTypes({
    required List<String> types,
  }) async {
    try {
      final res = await _homeApi.fetchPokemonByTypes(types);
      return QueryResponseModel(data: res);
    } catch (e) {
      return QueryResponseModel(
        isSuccessful: false,
        exceptionCode: ExceptionCode(
          message: e.toString(),
          errorType: TypeErrorException.ERROR,
        ),
      );
    }
  }

  @override
  Future<QueryResponseModel<List<PokemonModel>>> fetchPokemonByNameLike(
    String query,
  ) async {
    try {
      final res = await _homeApi.fetchPokemonByNameLike(query);
      return QueryResponseModel(data: res);
    } catch (e) {
      return QueryResponseModel(
        isSuccessful: false,
        exceptionCode: ExceptionCode(
          message: e.toString(),
          errorType: TypeErrorException.ERROR,
        ),
      );
    }
  }
}

final homeRepositoryProvider = Provider<HomeRepository>(
  (Ref ref) => _HomeRepository(ref.read(homeApiProvider)),
);
