import 'package:prokemn_app/feature/pokemon_description/data/model/pokemon_detail_model.dart';

abstract class PokemonDescriptionApiInterface {
  Future<PokemonDetailModel?> fetchPokemonDetail(int pokemonId);
}
