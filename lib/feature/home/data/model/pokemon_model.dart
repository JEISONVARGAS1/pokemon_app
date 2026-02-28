class PokemonModel {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> types;

  const PokemonModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
  });

  String get formattedName =>
      name[0].toUpperCase() + name.substring(1).replaceAll('-', ' ');

  String get pokedexNumber => 'N°${id.toString().padLeft(3, '0')}';

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    final id = json['id'] as int;
    final sprites = json['sprites'] as Map<String, dynamic>?;
    final typesJson = json['types'] as List<dynamic>? ?? [];

    final imageUrl = sprites?['other']?['official-artwork']?['front_default'] as String? ??
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

    final types = typesJson
        .map((t) => (t['type']?['name'] as String?) ?? '')
        .where((t) => t.isNotEmpty)
        .toList();

    return PokemonModel(
      id: id,
      name: json['name'] as String? ?? '',
      imageUrl: imageUrl,
      types: types,
    );
  }
}
