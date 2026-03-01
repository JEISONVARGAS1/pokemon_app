import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/core/error/exceptions.dart';
import 'package:prokemn_app/core/model/query_response_model.dart';
import 'package:prokemn_app/feature/pokemon_description/data/model/pokemon_detail_model.dart';
import 'package:prokemn_app/feature/pokemon_description/data/pokemon_description_api.dart';
import 'package:prokemn_app/feature/pokemon_description/data/pokemon_description_api_interface.dart';

abstract class PokemonDescriptionRepository {
  Future<QueryResponseModel<PokemonDetailModel>> fetchPokemonDetail(
    int pokemonId,
  );
}

class _PokemonDescriptionRepository implements PokemonDescriptionRepository {
  final PokemonDescriptionApiInterface _api;

  _PokemonDescriptionRepository(PokemonDescriptionApiInterface api) : _api = api;

  @override
  Future<QueryResponseModel<PokemonDetailModel>> fetchPokemonDetail(
    int pokemonId,
  ) async {
    try {
      final detail = await _api.fetchPokemonDetail(pokemonId);
      if (detail == null) {
        return QueryResponseModel(
          isSuccessful: false,
          data: null,
          exceptionCode: ExceptionCode(
            message: 'No se encontró el Pokémon',
            errorType: TypeErrorException.ERROR,
          ),
        );
      }
      return QueryResponseModel(data: detail);
    } catch (e) {
      return QueryResponseModel(
        isSuccessful: false,
        data: null,
        exceptionCode: ExceptionCode(
          message: e.toString(),
          errorType: TypeErrorException.ERROR,
        ),
      );
    }
  }
}

final pokemonDescriptionRepositoryProvider =
    Provider<PokemonDescriptionRepository>(
  (ref) => _PokemonDescriptionRepository(ref.read(pokemonDescriptionApiProvider)),
);
