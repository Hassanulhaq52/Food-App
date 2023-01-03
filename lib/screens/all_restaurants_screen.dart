import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/widgets/all_restaurants_widget.dart';

class AllRestaurantsScreen extends StatelessWidget {
  const AllRestaurantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'All Restaurants',
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
        Column(
          children: const [
            AllRestaurantsWidget(
              restaurantImage: 'assets/manchester.png',
              restaurantName: 'Manchester Farms ',
              restaurantRating: ' 3.7',
              restaurantSubtitle: '9.5 mi • 23 min • \$6.40 Delivery Fee',
              discountText: 'Opening Soon',
              discountContainerWidth: 78,
            ),
            SizedBox(
              height: 20.0,
            ),
            AllRestaurantsWidget(
              restaurantImage: 'assets/suya.png',
              restaurantName: 'The Suya Spot',
              restaurantRating: ' 2.8 ',
              restaurantSubtitle: '4.5 mi • 8 min • \$2.90 Delivery Fee',
              discountText: '',
              discountContainerWidth: 0,
            ),
          ],
        ),
      ],
    );
  }
}
