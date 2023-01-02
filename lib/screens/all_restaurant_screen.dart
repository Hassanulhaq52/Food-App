import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class AllRestaurantScreen extends StatelessWidget {
  const AllRestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'All Restaurants',
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
        Column(
          children: const [
            PopularRestaurantsWidget(
              restaurantImage: 'assets/manchester.png',
              restaurantName: 'Manchester Farms ',
              restaurantRating: ' 3.7',
              restaurantSubtitle: '9.5 mi • 23 min • \$6.40 Delivery Fee',
              discountText: 'Opening Soon',
              discountContainerWidth: 80,
            ),
            SizedBox(
              height: 20.0,
            ),
            PopularRestaurantsWidget(
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

class PopularRestaurantsWidget extends StatelessWidget {
  const PopularRestaurantsWidget({
    super.key,
    required this.restaurantImage,
    required this.restaurantName,
    required this.restaurantRating,
    required this.restaurantSubtitle,
    required this.discountText,
    required this.discountContainerWidth,
  });

  final String restaurantImage;
  final String restaurantName;
  final String restaurantRating;
  final String restaurantSubtitle;
  final String discountText;
  final double discountContainerWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.18,
          width: MediaQuery.of(context).size.width,
          decoration: Constant.restaurantDecoration.copyWith(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                restaurantImage,
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0.0,
                left: 0.0,
                child: Container(
                  height: 22,
                  width: discountContainerWidth,
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  decoration: Constant.discountDecoration,
                  child: Text(
                    discountText,
                    textAlign: TextAlign.center,
                    style: Constant.discountStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
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
              Row(
                children: [
                  Text(
                    restaurantSubtitle,
                    style: Constant.subtitleStyle,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade800,
                    size: 18,
                  ),
                  Text(
                    restaurantRating,
                    style: Constant.ratingStyle,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
