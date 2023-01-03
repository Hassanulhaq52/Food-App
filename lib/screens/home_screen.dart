import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/screens/all_restaurants_screen.dart';
import 'package:food_app/screens/busyjollof_restaurants_screen.dart';
import 'package:food_app/screens/popular_foods_screen.dart';
import 'package:food_app/screens/popular_restaurants_screen.dart';
import 'foods_category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon.png',
              height: 20,
              width: 20,
              color: Colors.blue,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Add Projects',
          ),
        ],
      ),
      backgroundColor: const Color(0xffF5F5F5),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 50,
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.21,
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
                    style: Constants.categoryStyle,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const FoodsCategoryScreen(),
                const SizedBox(
                  height: 26,
                ),
                const PopularRestaurantsScreen(),
                const SizedBox(
                  height: 26,
                ),
                const PopularFoodsScreen(),
                const SizedBox(
                  height: 26,
                ),
                const BusyJollofRestaurantsScreen(),
                const SizedBox(
                  height: 26,
                ),
                const AllRestaurantsScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
