import 'package:flutter/material.dart';
import 'package:prokemn_app/uikit/utils/app_colors.dart';

enum PokemonType {
  grass(
    displayName: 'Planta',
    color: AppColors.pokemonGrass,
    borderColor: AppColors.pokemonGrassBorder,
  ),
  poison(
    displayName: 'Veneno',
    color: AppColors.pokemonPoison,
    borderColor: AppColors.pokemonPoisonBorder,
  ),
  fire(
    displayName: 'Fuego',
    color: AppColors.pokemonFire,
    borderColor: AppColors.pokemonFireBorder,
  ),
  flying(
    displayName: 'Volador',
    color: AppColors.pokemonFlying,
    borderColor: AppColors.pokemonFlyingBorder,
  ),
  water(
    displayName: 'Agua',
    color: AppColors.pokemonWater,
    borderColor: AppColors.pokemonWaterBorder,
  ),
  bug(
    displayName: 'Bicho',
    color: AppColors.pokemonBug,
    borderColor: AppColors.pokemonBugBorder,
  ),
  normal(
    displayName: 'Normal',
    color: AppColors.pokemonNormal,
    borderColor: AppColors.pokemonNormalBorder,
  ),
  electric(
    displayName: 'Eléctrico',
    color: AppColors.pokemonElectric,
    borderColor: AppColors.pokemonElectricBorder,
  ),
  ground(
    displayName: 'Tierra',
    color: AppColors.pokemonGround,
    borderColor: AppColors.pokemonGroundBorder,
  ),
  fairy(
    displayName: 'Hada',
    color: AppColors.pokemonFairy,
    borderColor: AppColors.pokemonFairyBorder,
  ),
  fighting(
    displayName: 'Lucha',
    color: AppColors.pokemonFighting,
    borderColor: AppColors.pokemonFightingBorder,
  ),
  psychic(
    displayName: 'Psíquico',
    color: AppColors.pokemonPsychic,
    borderColor: AppColors.pokemonPsychicBorder,
  ),
  rock(
    displayName: 'Roca',
    color: AppColors.pokemonRock,
    borderColor: AppColors.pokemonRockBorder,
  ),
  steel(
    displayName: 'Acero',
    color: AppColors.pokemonSteel,
    borderColor: AppColors.pokemonSteelBorder,
  ),
  ice(
    displayName: 'Hielo',
    color: AppColors.pokemonIce,
    borderColor: AppColors.pokemonIceBorder,
  ),
  ghost(
    displayName: 'Fantasma',
    color: AppColors.pokemonGhost,
    borderColor: AppColors.pokemonGhostBorder,
  ),
  dragon(
    displayName: 'Dragón',
    color: AppColors.pokemonDragon,
    borderColor: AppColors.pokemonDragonBorder,
  ),
  dark(
    displayName: 'Siniestro',
    color: AppColors.pokemonDark,
    borderColor: AppColors.pokemonDarkBorder,
  );

  final String displayName;
  final Color color;
  final Color borderColor;

  const PokemonType({
    required this.displayName,
    required this.color,
    required this.borderColor,
  });

  static PokemonType? fromString(String key) {
    for (final type in PokemonType.values) {
      if (type.name == key) return type;
    }
    return null;
  }
}
