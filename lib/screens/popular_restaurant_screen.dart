import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class PopularRestaurantScreen extends StatelessWidget {
  const PopularRestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Popular Restaurants',
              style: Constant.headingStyle,
            ),
            Text(
              'View all',
              style: Constant.categoryStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              PopularRestaurantsWidget(
                restaurantImage: 'assets/obosa.png',
                restaurantName: 'Obosa Restaurant ',
                restaurantRating: ' 4.5',
                restaurantSubtitle: '7.2 mi • 15 min • \$4.90 Delivery Fee',
                discountText: '15% Off',
                discountContainerWidth: 55,
              ),
              SizedBox(
                width: 10.0,
              ),
              PopularRestaurantsWidget(
                restaurantImage: 'assets/roll.jpg',
                restaurantName: 'Pelloma Restaurant ',
                restaurantRating: ' 4.9 ',
                restaurantSubtitle: '5.8 mi • 10 min • \$3.60 Delivery Fee',
                discountText: '',
                discountContainerWidth: 0,
              ),
              SizedBox(
                width: 10.0,
              ),
              PopularRestaurantsWidget(
                restaurantImage: 'assets/pizza.jpg',
                restaurantName: 'California Restaurant ',
                restaurantRating: ' 3.2',
                restaurantSubtitle: '3.4 mi • 7 min • \$2.40 Delivery Fee',
                discountText: 'Upto 70% Off',
                discountContainerWidth: 80,
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
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width * 0.72,
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
          height: 10.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.72,
          child: Row(
            children: [
              Text(
                restaurantName,
                style: Constant.titleStyle,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow.shade800,
                size: 18,
              ),
              Text(
                restaurantRating,
                style: Constant.ratingStyle,
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
