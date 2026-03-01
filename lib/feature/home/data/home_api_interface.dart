import 'package:prokemn_app/core/api/center_api.dart';
import 'package:prokemn_app/core/model/pokemon_model.dart';

abstract class HomeApiInterface extends CenterApi {
  Future<List<PokemonModel>> fetchPokemonList({int limit = 20, int offset = 0});
}
