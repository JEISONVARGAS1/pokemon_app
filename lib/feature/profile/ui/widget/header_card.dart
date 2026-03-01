import 'package:flutter/material.dart';
import 'package:prokemn_app/uikit/utils/app_colors.dart';
import 'package:prokemn_app/uikit/utils/app_typography.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({
    super.key,
    required this.child,
    required this.title,
    required this.headerColor,
  });

  final Widget child;
  final String title;
  final Color headerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: .all(color: AppColors.primary, width: 2),
        borderRadius: .circular(12),
      ),
      clipBehavior: .antiAlias,
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          Container(
            padding: .symmetric(vertical: 10, horizontal: 12),
            color: headerColor,
            alignment: .center,
            child: Text(
              title,
              textAlign: .center,
              style: AppTypography.h6.copyWith(
                color: Colors.black87,
                letterSpacing: 0.8,
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.all(16), child: child),
        ],
      ),
    );
  }
}
