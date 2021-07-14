import 'package:flutter/material.dart';
import 'package:travely/theme.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: double.infinity,
      decoration: BoxDecoration(color: whiteColor, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 1,
          spreadRadius: 1,
          offset: Offset(0, 0),
        )
      ]),
      child: Padding(
        padding: EdgeInsets.fromLTRB(35, 22, 35, 22),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.black.withOpacity(0.7),
                ),
                Icon(
                  Icons.explore,
                  color: Colors.black.withOpacity(0.3),
                ),
                Icon(
                  Icons.bookmark,
                  color: Colors.black.withOpacity(0.3),
                ),
                Icon(
                  Icons.person,
                  color: Colors.black.withOpacity(0.3),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
