import 'package:flutter/material.dart';
import 'package:travely/theme.dart';

import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';

class RecomendedCard extends StatelessWidget {
  final String imageUrl;
  final String placeName;
  final String placeAddress;
  final bool tag;

  RecomendedCard({
    this.imageUrl,
    this.placeName,
    this.placeAddress,
    this.tag,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width:
          ((MediaQuery.of(context).size.width - (2 * defaultMargin)) / 2) - 10,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.3, 0.8, 10.0],
                colors: [
                  blackColor.withOpacity(0.1),
                  blackColor.withOpacity(0.1),
                  blackColor.withOpacity(0.1),
                  blackColor.withOpacity(0.5),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor.withOpacity(0.3),
                      ),
                      child: Center(
                        child: tag
                            ? Image.asset(
                                'assets/bookmark.png',
                                width: 18,
                                height: 18,
                              )
                            : Image.asset(
                                'assets/bookmark_outline.png',
                                width: 18,
                                height: 18,
                              ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Text(
                        placeName,
                        style: styleText.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/location.png',
                          width: 8,
                          height: 9,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          placeAddress,
                          style: styleText.copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: whiteColor.withOpacity(0.6),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
