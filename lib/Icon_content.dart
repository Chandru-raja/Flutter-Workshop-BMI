import 'package:flutter/material.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, this.icon, this.txt});

  final IconData? icon;
  final String? txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white70,
          size: 100,
        ),
        const SizedBox(height: 8),
        Text(
          txt!,
          style: kCostomTxtbox,
        )
      ],
    );
  }
}
