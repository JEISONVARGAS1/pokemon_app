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

  @override
  Future<List<PokemonModel>> fetchPokemonByNameLike(String query) async {
    if (query.trim().isEmpty) return [];

    final res = await get(urlSpecific: 'pokemon?limit=10000&offset=0');
    if (!res.isSuccessful) return [];

    final results = res.data["results"] as List<dynamic>? ?? [];
    final lowerQuery = query.trim().toLowerCase();

    final matchingUrls = results
        .where((item) {
          final name = (item["name"] as String? ?? "").toLowerCase();
          return name.contains(lowerQuery);
        })
        .map((item) => item["url"] as String)
        .toList();

    if (matchingUrls.isEmpty) return [];

    final responses = await Future.wait(
      matchingUrls.map((url) => get(urlSpecific: url, isCustomUrl: true)),
    );

    return responses
        .where((r) => r.isSuccessful)
        .map((r) => PokemonModel.fromJson(r.data))
        .toList();
  }

  @override
  Future<List<PokemonModel>> fetchPokemonByTypes(List<String> types) async {
    if (types.isEmpty) return [];

    final typeNames = types.map((t) => t.trim().toLowerCase()).where((t) => t.isNotEmpty).toSet().toList();
    if (typeNames.isEmpty) return [];

    final allUrls = <String>{};

    for (final typeName in typeNames) {
      final res = await get(urlSpecific: 'type/$typeName');
      if (!res.isSuccessful) continue;

      final pokemonList = res.data["pokemon"] as List<dynamic>? ?? [];
      for (final entry in pokemonList) {
        final pokemon = entry["pokemon"];
        if (pokemon != null && pokemon["url"] != null) {
          allUrls.add(pokemon["url"] as String);
        }
      }
    }

    if (allUrls.isEmpty) return [];

    final responses = await Future.wait(
      allUrls.map((url) => get(urlSpecific: url, isCustomUrl: true)),
    );

    return responses
        .where((r) => r.isSuccessful)
        .map((r) => PokemonModel.fromJson(r.data))
        .toList();
  }
}

final homeApiProvider = Provider<HomeApiInterface>((Ref ref) => _HomeApi());
