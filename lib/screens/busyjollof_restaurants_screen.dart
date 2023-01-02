import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class BusyJollofRestaurantScreen extends StatelessWidget {
  const BusyJollofRestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'New on BusyJollof',
              style: Constant.headingStyle,
            ),
            Text(
              'View all',
              style: Constant.categoryStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              PopularRestaurantsWidget(
                restaurantImage: 'assets/safari.png',
                restaurantName: 'Safari House',
                restaurantSubtitle: '8.6 mi • \$5.80 Delivery Fee',
              ),
              SizedBox(
                width: 10.0,
              ),
              PopularRestaurantsWidget(
                restaurantImage: 'assets/nkechi.jpg',
                restaurantName: 'Nkechi\'s kitchen',
                restaurantSubtitle: '1.7 mi • \$1.20 Delivery Fee',
              ),
              SizedBox(
                width: 10.0,
              ),
              PopularRestaurantsWidget(
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

class PopularRestaurantsWidget extends StatelessWidget {
  const PopularRestaurantsWidget({
    super.key,
    required this.restaurantImage,
    required this.restaurantName,
    required this.restaurantSubtitle,
  });

  final String restaurantImage;
  final String restaurantName;
  final String restaurantSubtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.53,
          decoration: Constant.restaurantDecoration.copyWith(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                restaurantImage,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.53,
          child: Row(
            children: [
              Text(
                restaurantName,
                style: Constant.titleStyle,
              ),
              const Spacer(),
              Icon(
                Icons.favorite_border_outlined,
                color: Colors.yellow.shade800,
                size: 18,
              ),
            ],
          ),
        ),
        Text(
          restaurantSubtitle,
          style: Constant.subtitleStyle,
        ),
      ],
    );
  }
}
