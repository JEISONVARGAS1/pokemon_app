import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/feature/home/data/home_api_interface.dart';
import 'package:prokemn_app/core/model/pokemon_model.dart';

class _HomeApi extends HomeApiInterface {
  static const _baseUrl = 'https://pokeapi.co/api/v2';

  _HomeApi();

  @override
  Future<List<PokemonModel>> fetchPokemonList({
    int limit = 20,
    int offset = 0,
  }) async {
    final listResponse = await http.get(
      Uri.parse('$_baseUrl/pokemon?limit=$limit&offset=$offset'),
    );

    if (listResponse.statusCode != 200) {
      throw Exception('Error al cargar Pokémon');
    }

    final listData = jsonDecode(listResponse.body) as Map<String, dynamic>;
    final results = listData['results'] as List<dynamic>? ?? [];

    final pokemonList = <PokemonModel>[];

    for (final item in results) {
      final url = item['url'] as String?;
      if (url == null) continue;

      final detailResponse = await http.get(Uri.parse(url));
      if (detailResponse.statusCode != 200) continue;

      final detailData = jsonDecode(detailResponse.body) as Map<String, dynamic>;
      pokemonList.add(PokemonModel.fromJson(detailData));
    }

    return pokemonList;
  }
}

final homeApiProvider = Provider<HomeApiInterface>(
  (Ref ref) => _HomeApi(),
);
