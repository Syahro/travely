import 'package:flutter/material.dart';
import 'package:travely/pages/detail_page.dart';
import 'package:travely/theme.dart';
import 'package:travely/widget/categories.dart';
import 'package:travely/widget/floating_button.dart';
import 'package:travely/widget/recomended_card.dart';

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
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';
import '../theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:
                  EdgeInsets.fromLTRB(defaultMargin, 20, defaultMargin, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Container(
                      height: 55,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 8,
                            child: Container(
                              height: 52,
                              margin: EdgeInsets.fromLTRB(0, 3, 3, 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: greyColor,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/search.png',
                                      width: 26,
                                      height: 26,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Search...',
                                      style: styleText.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: darkGreyColor,
                                      ),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      'assets/plug.png',
                                      width: 23,
                                      height: 26,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 52,
                                margin: EdgeInsets.fromLTRB(10, 3, 3, 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/profile.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 1,
                                        spreadRadius: 1,
                                        offset: Offset(1, 2),
                                      )
                                    ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Let\'s go trip with us!',
                    style: styleText.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailPage();
                      }));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width -
                            (2 * defaultMargin),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/destination1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(23),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: whiteColor.withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/medal.png',
                                              width: 12,
                                              height: 16,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('1',
                                                style: styleText.copyWith(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  color: whiteColor,
                                                ))
                                          ],
                                        ),
                                      ),
                                      Container(
                                          padding: EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                            color: whiteColor.withOpacity(0.3),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              'assets/bookmark.png',
                                              width: 18,
                                              height: 18,
                                            ),
                                          )),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 2,
                                        ),
                                        child: Text('Kelingking beach',
                                            style: styleText.copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: whiteColor,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/location.png',
                                            width: 10,
                                            height: 12,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text('Bali, Indonesia',
                                              style: styleText.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color:
                                                    whiteColor.withOpacity(0.6),
                                              ))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: blackColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Categories(
                              imageUrl: 'assets/beach.png',
                              name: 'Beach',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Categories(
                              imageUrl: 'assets/forest.png',
                              name: 'Forest',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Categories(
                              imageUrl: 'assets/mount.png',
                              name: 'Mountains',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'For You',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      RecomendedCard(
                        imageUrl: 'assets/destination2_1.png',
                        placeName: 'Alimatha island',
                        placeAddress: 'Maldives',
                        tag: false,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      RecomendedCard(
                        imageUrl: 'assets/destination3_1.png',
                        placeName: 'Peyto lake',
                        placeAddress: 'Alberta, Canada',
                        tag: true,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 110,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
