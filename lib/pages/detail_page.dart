import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            child: Image.asset(
              'assets/destination1.jpg',
              width: double.infinity,
              height: 320,
            ),
          )
        ],
      ),
    );
  }
}
