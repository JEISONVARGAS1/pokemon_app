import 'package:flutter/material.dart';

const Map<String, ({String name, Color color, Color borderColor})> _typeConfig = {
  'grass': (name: 'Planta', color: Color(0xFF7AC74C), borderColor: Color(0xFF5A9E2E)),
  'poison': (name: 'Veneno', color: Color(0xFFA33EA1), borderColor: Color(0xFF7B2C7B)),
  'fire': (name: 'Fuego', color: Color(0xFFEE8130), borderColor: Color(0xFFC65D0E)),
  'flying': (name: 'Volador', color: Color(0xFFA98FF3), borderColor: Color(0xFF7B5FC4)),
  'water': (name: 'Agua', color: Color(0xFF6390F0), borderColor: Color(0xFF4A6FC4)),
  'bug': (name: 'Bicho', color: Color(0xFFA6B91A), borderColor: Color(0xFF7D8F14)),
  'normal': (name: 'Normal', color: Color(0xFFA8A77A), borderColor: Color(0xFF8B8A5C)),
  'electric': (name: 'Eléctrico', color: Color(0xFFF7D02C), borderColor: Color(0xFFC4A00E)),
  'ground': (name: 'Tierra', color: Color(0xFFE2BF65), borderColor: Color(0xFFB89B3E)),
  'fairy': (name: 'Hada', color: Color(0xFFD685AD), borderColor: Color(0xFFB85C85)),
  'fighting': (name: 'Lucha', color: Color(0xFFC22E28), borderColor: Color(0xFF9A1F1A)),
  'psychic': (name: 'Psíquico', color: Color(0xFFF95587), borderColor: Color(0xFFC43D6A)),
  'rock': (name: 'Roca', color: Color(0xFFB6A136), borderColor: Color(0xFF8B7A28)),
  'steel': (name: 'Acero', color: Color(0xFFB7B7CE), borderColor: Color(0xFF8B8BA8)),
  'ice': (name: 'Hielo', color: Color(0xFF96D9D6), borderColor: Color(0xFF6BB5B2)),
  'ghost': (name: 'Fantasma', color: Color(0xFF735797), borderColor: Color(0xFF554374)),
  'dragon': (name: 'Dragón', color: Color(0xFF6F35FC), borderColor: Color(0xFF4F1FC4)),
  'dark': (name: 'Siniestro', color: Color(0xFF705746), borderColor: Color(0xFF4A3A2E)),
};

String getTypeName(String typeKey) {
  return _typeConfig[typeKey]?.name ?? typeKey;
}

Color getTypeColor(String typeKey) {
  return _typeConfig[typeKey]?.color ?? Colors.grey;
}

Color getTypeBorderColor(String typeKey) {
  return _typeConfig[typeKey]?.borderColor ?? Colors.grey.shade700;
}

Color getCardBackgroundColor(List<String> types) {
  if (types.isEmpty) return const Color(0xFFF5F5F5);
  return getTypeColor(types.first).withValues(alpha: 0.35);
}
