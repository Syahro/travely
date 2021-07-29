import 'package:flutter/material.dart';
import 'package:travely/theme.dart';
import 'package:travely/widget/floating_button_detail.dart';
import 'package:travely/widget/information.dart';

import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButtonDetail(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/destination1.jpg',
              width: double.infinity,
              height: 320,
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 275,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 50,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 3),
                            child: Text(
                              'Labuhanbajo Beach',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                          ),
                          Text(
                            '\$260',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: blackColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/location.png',
                            width: 13,
                            height: 15,
                            color: darkGreyColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Bali, Indonesia',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: darkGreyColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Information(
                            imageUrl: 'assets/star.png',
                            info: '4.8',
                            noted: '2k reviews',
                            isDegrees: false,
                          ),
                          Container(
                            width: 1,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Information(
                            imageUrl: 'assets/clock.png',
                            info: '3h',
                            noted: 'Duration',
                            isDegrees: false,
                          ),
                          Container(
                            width: 1,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Information(
                            imageUrl: 'assets/cloud.png',
                            info: '28',
                            noted: 'Sunny',
                            isDegrees: true,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Description',
                        style: styleText.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                          'Kelingking Beach is one of the most famous spot of Bali. Major travel sites use its photo to advertise Bali and even sometimes Indonesia. The place is indeed very spectacular and really amazing. The rock of Kelingking Beach looks a little like the backbone of a dinosaur that would drink in the sea.',
                          style: styleText.copyWith(
                            fontSize: 16,
                            color: darkGreyColor,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(
                        height: 130,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        color: Color(0XFFADB0B2).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/back.png',
                          width: 28,
                          height: 14,
                        ),
                      )),
                ),
                Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      color: Color(0XFFADB0B2).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/share.png',
                        width: 17,
                        height: 20,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
