import 'package:flutter/material.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';

class RegionsPage extends StatelessWidget {
  const RegionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InformationView(
      title: "¡Muy pronto disponible!",
      description: "Estamos trabajando para traerte esta sección. Vuelve más adelante para descubrir todas las novedades.",
      image: Image.asset('assets/image/soon.png'),
    );
  }
}
