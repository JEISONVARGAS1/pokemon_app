import 'package:flutter/material.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';
import 'package:prokemn_app/core/extension/context_extension.dart';

class RegionsPage extends StatelessWidget {
  const RegionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InformationView(
      title: context.l10n.regionsComingSoonTitle,
      description: context.l10n.regionsComingSoonDescription,
      image: Image.asset('assets/image/soon.png'),
    );
  }
}
