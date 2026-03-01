import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/feature/home/data/home_api_interface.dart';
import 'package:prokemn_app/core/model/pokemon_model.dart';

class _HomeApi extends HomeApiInterface {
  _HomeApi();

  @override
  Future<List<PokemonModel>> fetchPokemonList({
    int limit = 20,
    int offset = 0,
  }) async {
    final res = await get(urlSpecific: 'pokemon?limit=$limit&offset=$offset');

    if (res.isSuccessful) {
      final results = res.data["results"]!;
      List<String> urls = List<String>.from(results.map((item) => item["url"]));
      List<PokemonModel> pokemonList =
          await Future.wait(
            urls.map((url) => get(urlSpecific: url, isCustomUrl: true)),
          ).then(
            (responses) => responses
                .map((response) => PokemonModel.fromJson(response.data))
                .toList(),
          );

      return pokemonList;
    }
    return [];
  }
}

final homeApiProvider = Provider<HomeApiInterface>((Ref ref) => _HomeApi());
