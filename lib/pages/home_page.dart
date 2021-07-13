import 'package:flutter/material.dart';
import 'package:travely/theme.dart';
import 'package:travely/widget/recomended_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 13,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Search...',
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.translate,
                                      color: Colors.grey,
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
                    style: TextStyle(
                      fontSize: 24,
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
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
                      child: Padding(
                        padding: EdgeInsets.all(23),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 25,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 4),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.military_tech,
                                          color: Colors.amber,
                                          size: 20,
                                        ),
                                        Text(
                                          '1',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 2,
                                  ),
                                  child: Text(
                                    'Labuhanbajo Beach',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: whiteColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: whiteColor,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      'Labuhanbajo - Indonesia',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: whiteColor,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
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
                        fontWeight: FontWeight.w500,
                        color: blackColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 90,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.3)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.beach_access,
                                      color: Colors.black.withOpacity(0.3),
                                    ),
                                    Text(
                                      'Beach',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 45,
                              width: 110,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.3)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.waves,
                                      color: Colors.black.withOpacity(0.3),
                                    ),
                                    Text(
                                      'Snorkling',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 45,
                              width: 90,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.3)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.park,
                                      color: Colors.black.withOpacity(0.3),
                                    ),
                                    Text(
                                      'Forest',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 45,
                              width: 110,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.3)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.terrain,
                                      color: Colors.black.withOpacity(0.3),
                                    ),
                                    Text(
                                      'Mountain',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                    height: 20,
                  ),
                  Text(
                    'For You',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RecomendedCard(
                            imageUrl: 'assets/destination2.jpeg',
                            placeName: 'Raja Ampat',
                            placeAddress: 'Papua Barat - Indonesia',
                            tag: false),
                        SizedBox(
                          width: 20,
                        ),
                        RecomendedCard(
                          imageUrl: 'assets/destination3.jpg',
                          placeName: 'Sumur Tiga',
                          placeAddress: 'Sabang - Indonesia',
                          tag: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RecomendedCard(
                          imageUrl: 'assets/destination4.jpg',
                          placeName: 'Tangkahan',
                          placeAddress: 'Langkat - Indonesia',
                          tag: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RecomendedCard(
                          imageUrl: 'assets/destination5.jpg',
                          placeName: 'Gunung Rinjani',
                          placeAddress: 'Malang - Jawa Timur',
                          tag: false,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
