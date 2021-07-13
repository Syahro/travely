import 'package:flutter/material.dart';
import 'package:travely/theme.dart';

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
      height: 130,
      width: 130,
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
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.3),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  child: Icon(
                    (tag) ? Icons.bookmark : Icons.bookmark_border,
                    color: whiteColor.withOpacity(0.8),
                    size: 13,
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
                    style: TextStyle(
                      fontSize: 13,
                      color: whiteColor,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 10,
                      color: whiteColor.withOpacity(0.8),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      placeAddress,
                      style: TextStyle(
                        fontSize: 10,
                        color: whiteColor.withOpacity(0.8),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
