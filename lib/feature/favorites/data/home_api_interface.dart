import 'package:prokemn_app/core/model/pokemon_model.dart';

abstract class HomeApiInterface {
  Future<List<PokemonModel>> fetchPokemonList({int limit = 20, int offset = 0});
}
