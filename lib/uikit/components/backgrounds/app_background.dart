import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

/// Fondo base de la aplicación con color de background.
class AppBackground extends StatelessWidget {
  const AppBackground({
    super.key,
    this.color,
    required this.child,
  });

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: color ?? AppColors.background,
      child: child,
    );
  }
}
