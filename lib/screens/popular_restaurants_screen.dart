import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/widgets/popular_restaurants_widget.dart';

class PopularRestaurantsScreen extends StatelessWidget {
  const PopularRestaurantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Popular Restaurants',
              style: Constants.headingStyle,
            ),
            Text(
              'View all',
              style: Constants.categoryStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            children: [
              PopularRestaurantsWidget(
                restaurantImage: 'assets/obosa.png',
                restaurantName: 'Obosa Restaurant ',
                restaurantRating: ' 4.5',
                restaurantSubtitle: '7.2 mi • 15 min • \$4.90 Delivery Fee',
                discountText: '15% Off',
              ),
              SizedBox(
                width: 9.0,
              ),
              PopularRestaurantsWidget(
                restaurantImage: 'assets/roll.jpg',
                restaurantName: 'Pelloma Restaurant ',
                restaurantRating: ' 4.9 ',
                restaurantSubtitle: '5.8 mi • 10 min • \$3.60 Delivery Fee',
              ),
              SizedBox(
                width: 9.0,
              ),
              PopularRestaurantsWidget(
                restaurantImage: 'assets/pizza.jpg',
                restaurantName: 'California Restaurant ',
                restaurantRating: ' 3.2',
                restaurantSubtitle: '3.4 mi • 7 min • \$2.40 Delivery Fee',
                discountText: 'Upto 70% Off',
              )
            ],
          ),
        ),
      ],
    );
  }
}
