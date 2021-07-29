import 'package:flutter/material.dart';
import 'package:travely/theme.dart';
import 'package:travely/widget/icon_bottom.dart';

import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.2),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(2, 0),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(45, 35, 45, 26),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBottom(
                  imageUrl: 'assets/home.png',
                  isActive: true,
                ),
                IconBottom(
                  imageUrl: 'assets/compas.png',
                  isActive: false,
                ),
                IconBottom(
                  imageUrl: 'assets/bookmark_outline.png',
                  isActive: false,
                ),
                IconBottom(
                  imageUrl: 'assets/user.png',
                  isActive: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
