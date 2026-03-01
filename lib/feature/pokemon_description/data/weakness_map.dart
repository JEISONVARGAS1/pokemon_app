/// Mapeo estático de debilidades por tipo de Pokémon.
class WeaknessMap {
  WeaknessMap._();

  static const Map<String, List<String>> _map = {
    'grass': ['fire', 'ice', 'poison', 'flying', 'bug'],
    'poison': ['ground', 'psychic'],
    'fire': ['water', 'ground', 'rock'],
    'water': ['electric', 'grass'],
    'electric': ['ground'],
    'ice': ['fire', 'fighting', 'rock', 'steel'],
    'flying': ['electric', 'ice', 'rock'],
    'psychic': ['bug', 'ghost', 'dark'],
    'bug': ['fire', 'flying', 'rock'],
    'rock': ['water', 'grass', 'fighting', 'ground', 'steel'],
    'ground': ['water', 'grass', 'ice'],
    'dragon': ['ice', 'dragon', 'fairy'],
    'dark': ['fighting', 'bug', 'fairy'],
    'fairy': ['poison', 'steel'],
    'steel': ['fire', 'fighting', 'ground'],
    'fighting': ['flying', 'psychic', 'fairy'],
    'ghost': ['ghost', 'dark'],
    'normal': ['fighting'],
  };

  static List<String> getWeaknesses(String typeKey) {
    return _map[typeKey] ?? [];
  }
}
