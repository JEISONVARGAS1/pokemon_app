import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/core/model/pokemon_detail_model.dart';
import 'package:prokemn_app/core/model/pokemon_model.dart';
import 'package:prokemn_app/feature/pokemon_description/data/weakness_map.dart';
import 'package:prokemn_app/feature/pokemon_description/data/pokemon_description_api_interface.dart';

class _PokemonDescriptionApi extends PokemonDescriptionApiInterface {

  @override
  Future<PokemonDetailModel?> fetchPokemonDetail(int pokemonId) async {
    final pokemonResponse = await get(
      urlSpecific: 'pokemon/$pokemonId',
    );
    if (!pokemonResponse.isSuccessful) return null;

    final speciesResponse = await get(
      urlSpecific: 'pokemon-species/$pokemonId',
    );
    if (!speciesResponse.isSuccessful) return null;

    final pokemonData = pokemonResponse.data;
    final speciesData = speciesResponse.data;

    final ability = _extractAbility(pokemonData);
    final category = _extractCategory(speciesData);
    final pokemon = PokemonModel.fromJson(pokemonData);
    final description = _extractDescription(speciesData);
    final (malePercent, femalePercent) = _extractGender(speciesData);
    final weaknesses = _getWeaknesses(pokemon.types.map((t) => t.key).toList());

    return PokemonDetailModel(
      pokemon: pokemon,
      description: description,
      weight: (pokemonData['weight'] as num?)?.toDouble() ?? 0,
      height: (pokemonData['height'] as num?)?.toDouble() ?? 0,
      category: category,
      ability: ability,
      malePercent: malePercent,
      femalePercent: femalePercent,
      weaknesses: weaknesses,
    );
  }

  String _extractDescription(Map<String, dynamic> speciesData) {
    final entries =
        speciesData['flavor_text_entries'] as List<dynamic>? ?? [];
    for (final e in entries) {
      final map = e as Map<String, dynamic>?;
      if ((map?['language']?['name'] as String?) == 'es') {
        final text = map!['flavor_text'] as String? ?? '';
        return text.replaceAll('\n', ' ').replaceAll('\f', ' ').trim();
      }
    }
    for (final e in entries) {
      final map = e as Map<String, dynamic>?;
      if ((map?['language']?['name'] as String?) == 'en') {
        final text = map!['flavor_text'] as String? ?? '';
        return text.replaceAll('\n', ' ').replaceAll('\f', ' ').trim();
      }
    }
    if (entries.isNotEmpty) {
      final map = entries.first as Map<String, dynamic>;
      final text = map['flavor_text'] as String? ?? '';
      return text.replaceAll('\n', ' ').replaceAll('\f', ' ').trim();
    }
    return '';
  }

  String _extractCategory(Map<String, dynamic> speciesData) {
    final genera = speciesData['genera'] as List<dynamic>? ?? [];
    final esGenus = genera.cast<Map<String, dynamic>>().where(
          (g) => (g['language']?['name'] as String?) == 'es',
        );
    if (esGenus.isEmpty) {
      final enGenus = genera.cast<Map<String, dynamic>>().where(
            (g) => (g['language']?['name'] as String?) == 'en',
          );
      if (enGenus.isNotEmpty) {
        return (enGenus.first['genus'] as String?)
                ?.replaceAll('Pokémon ', '')
                .toUpperCase() ??
            'DESCONOCIDO';
      }
      return 'DESCONOCIDO';
    }
    return (esGenus.first['genus'] as String?)
            ?.replaceAll('Pokémon ', '')
            .toUpperCase() ??
        'DESCONOCIDO';
  }

  (double, double) _extractGender(Map<String, dynamic> speciesData) {
    final rate = speciesData['gender_rate'] as int? ?? -1;
    if (rate == -1) return (0, 0);
    final femalePercent = (rate / 8) * 100;
    final malePercent = 100 - femalePercent;
    return (malePercent, femalePercent);
  }

  String _extractAbility(Map<String, dynamic> pokemonData) {
    final abilities = pokemonData['abilities'] as List<dynamic>? ?? [];
    for (final a in abilities) {
      final map = a as Map<String, dynamic>?;
      if ((map?['is_hidden'] as bool?) != true) {
        final name = map?['ability']?['name'] as String? ?? '';
        return name.isNotEmpty ? _capitalize(name) : 'Desconocida';
      }
    }
    if (abilities.isNotEmpty) {
      final map = abilities.first as Map<String, dynamic>;
      final name = map['ability']?['name'] as String? ?? '';
      return name.isNotEmpty ? _capitalize(name) : 'Desconocida';
    }
    return 'Desconocida';
  }

  String _capitalize(String s) =>
      s.isNotEmpty ? '${s[0].toUpperCase()}${s.substring(1)}' : s;

  List<String> _getWeaknesses(List<String> types) {
    final Set<String> weak = {};
    for (final type in types) {
      weak.addAll(WeaknessMap.getWeaknesses(type));
    }
    return weak.toList();
  }
}

final pokemonDescriptionApiProvider = Provider<PokemonDescriptionApiInterface>(
  (ref) => _PokemonDescriptionApi(),
);
