import 'package:flutter/material.dart';
import 'package:prokemn_app/uikit/utils/app_typography.dart';

class Experience extends StatelessWidget {
  final List<String> items;
  const Experience({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.orange.shade700,
                  ),
                  const SizedBox(width: 8),
                  Expanded(child: Text(e, style: AppTypography.bodyMedium)),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
