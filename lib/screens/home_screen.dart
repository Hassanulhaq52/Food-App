import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

import 'dishes_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/food_image_home.jpg'),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'View all',
                  style: textStyle,
                ),
              ),
            ),
            const CategoryScreen(),
          ],
        ),
      ),
    );
  }
}
