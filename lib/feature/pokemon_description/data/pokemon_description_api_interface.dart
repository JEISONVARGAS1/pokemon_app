import 'package:prokemn_app/core/api/center_api.dart';
import 'package:prokemn_app/core/model/pokemon_detail_model.dart';

abstract class PokemonDescriptionApiInterface extends CenterApi {
  Future<PokemonDetailModel?> fetchPokemonDetail(int pokemonId);
}
