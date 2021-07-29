import 'package:flutter/material.dart';

import '../theme.dart';
import '../theme.dart';

class IconBottom extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  IconBottom({
    this.imageUrl,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageUrl,
          width: 26,
          height: 26,
          color: isActive ? blackColor : darkGreyColor,
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 6,
          width: 6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: isActive ? blackColor : Colors.transparent,
          ),
        )
      ],
    );
  }
}
