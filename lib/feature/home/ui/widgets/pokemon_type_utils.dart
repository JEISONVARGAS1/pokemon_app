import 'package:flutter/material.dart';
import 'package:prokemn_app/core/enum/type_enume.dart';

String getTypeName(String typeKey) {
  return PokemonType.fromString(typeKey)?.displayName ?? typeKey;
}

Color getTypeColor(String typeKey) {
  return PokemonType.fromString(typeKey)?.color ?? Colors.grey;
}

Color getTypeBorderColor(String typeKey) {
  return PokemonType.fromString(typeKey)?.borderColor ?? Colors.grey.shade700;
}

IconData getTypeIcon(String typeKey) {
  return PokemonType.fromString(typeKey)?.icon ?? Icons.circle;
}

Color getCardBackgroundColor(List<String> types) {
  if (types.isEmpty) return const Color(0xFFF5F5F5);
  return getTypeColor(types.first);
}
