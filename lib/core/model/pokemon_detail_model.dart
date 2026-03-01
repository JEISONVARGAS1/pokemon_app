import 'package:prokemn_app/core/model/pokemon_model.dart';

class PokemonDetailModel {
  final PokemonModel pokemon;
  final String description;
  final double weight;
  final double height;
  final String category;
  final String ability;
  final double malePercent;
  final double femalePercent;
  final List<String> weaknesses;

  const PokemonDetailModel({
    required this.pokemon,
    required this.description,
    required this.weight,
    required this.height,
    required this.category,
    required this.ability,
    required this.malePercent,
    required this.femalePercent,
    required this.weaknesses,
  });

  factory PokemonDetailModel.init() => PokemonDetailModel(
    weight: 0,
    height: 0,
    ability: '',
    category: '',
    weaknesses: [],
    malePercent: 0,
    description: '',
    femalePercent: 0,
    pokemon: PokemonModel(id: 0, name: '', imageUrl: '', types: []),
  );

  String get weightFormatted => '${(weight / 10).toStringAsFixed(1)} kg';
  String get heightFormatted => '${(height / 10).toStringAsFixed(1)} m';
}
