import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/widgets/popular_foods_widget.dart';

class PopularFoodsScreen extends StatelessWidget {
  const PopularFoodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Popular Foods nearby',
              style: Constants.headingStyle,
            ),
            Text(
              'View all',
              style: Constants.categoryStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            children: [
              PopularFoodsWidget(
                foodImage: 'assets/jollof.png',
                foodName: 'Jollof Rice',
                restaurantName: 'Pelloma Restaurant',
                trending: 'Trending ',
                restaurantDistance: '5.8 mi',
              ),
              const SizedBox(
                width: 10.0,
              ),
              PopularFoodsWidget(
                foodImage: 'assets/soup.png',
                foodName: 'Egwusi Soup',
                restaurantName: 'Suya Spot',
                restaurantDistance: '4.5 mi',
              ),
              const SizedBox(
                width: 10.0,
              ),
              const SizedBox(
                width: 10.0,
              ),
              PopularFoodsWidget(
                foodImage: 'assets/bbq.jpg',
                foodName: 'Bar B Q',
                restaurantName: 'California Restaurant',
                restaurantDistance: '3.4 mi',
              )
            ],
          ),
        ),
      ],
    );
  }
}
