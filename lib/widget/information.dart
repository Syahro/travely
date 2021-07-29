import 'package:flutter/material.dart';

import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';

class Information extends StatelessWidget {
  final String imageUrl;
  final String info;
  final String noted;
  final bool isDegrees;

  Information({
    this.imageUrl,
    this.info,
    this.noted,
    this.isDegrees,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imageUrl,
                width: 16,
                height: 16,
              ),
              SizedBox(
                width: 7,
              ),
              isDegrees
                  ? Row(
                      children: [
                        Text(
                          '28',
                          style: styleText.copyWith(
                            fontSize: 18,
                            color: blackColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text(
                            'O',
                            style: styleText.copyWith(
                              fontSize: 8,
                              color: blackColor,
                              fontWeight: FontWeight.w700,
                            ),
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                        Text(
                          '28',
                          style: styleText.copyWith(
                            fontSize: 18,
                            color: blackColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      info,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: blackColor,
                      ),
                    ),
            ],
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          noted,
          style: TextStyle(
            fontSize: 14,
            color: darkGreyColor,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
