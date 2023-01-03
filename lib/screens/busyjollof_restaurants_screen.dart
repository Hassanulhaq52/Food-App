import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/widgets/busyjollof_restaurants_widget.dart';

class BusyJollofRestaurantsScreen extends StatelessWidget {
  const BusyJollofRestaurantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'New on BusyJollof',
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
            children: const [
              BusyJollofRestaurantsWidget(
                restaurantImage: 'assets/safari.png',
                restaurantName: 'Safari House',
                restaurantSubtitle: '8.6 mi • \$5.80 Delivery Fee',
              ),
              SizedBox(
                width: 10.0,
              ),
              BusyJollofRestaurantsWidget(
                restaurantImage: 'assets/nkechi.jpg',
                restaurantName: 'Nkechi\'s kitchen',
                restaurantSubtitle: '1.7 mi • \$1.20 Delivery Fee',
              ),
              SizedBox(
                width: 10.0,
              ),
              BusyJollofRestaurantsWidget(
                restaurantImage: 'assets/lettuce.jpg',
                restaurantName: 'Lettuce Restaurant',
                restaurantSubtitle: '2.3 mi • \$1.80 Delivery Fee',
              )
            ],
          ),
        ),
      ],
    );
  }
}
