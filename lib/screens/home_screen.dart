import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/screens/restaurant_screen.dart';

import 'category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/food_image_home.jpg',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'View all',
                    style: textStyle,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const CategoryScreen(),
                const SizedBox(
                  height: 20,
                ),
                const RestaurantScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
