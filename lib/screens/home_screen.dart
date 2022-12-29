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
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/home.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'View all',
                    style: Constant.categoryStyle,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CategoryScreen(),
                const SizedBox(
                  height: 30,
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
