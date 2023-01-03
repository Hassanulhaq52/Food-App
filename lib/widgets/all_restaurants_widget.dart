import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class AllRestaurantsWidget extends StatelessWidget {
  const AllRestaurantsWidget({
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
          decoration: Constants.restaurantDecoration.copyWith(
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
                  height: 20,
                  width: discountContainerWidth,
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  decoration: Constants.discountDecoration,
                  child: Text(
                    discountText,
                    textAlign: TextAlign.center,
                    style: Constants.discountStyle,
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
                    style: Constants.titleStyle,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.favorite_border_outlined,
                    color: Color(0xFFFE8200),
                    size: 16,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    restaurantSubtitle,
                    style: Constants.subtitleStyle,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.star,
                    color: Color(0xFFFFB280),
                    size: 15,
                  ),
                  Text(
                    restaurantRating,
                    style: Constants.ratingStyle,
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
