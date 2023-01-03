import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class PopularRestaurantsWidget extends StatelessWidget {
  PopularRestaurantsWidget({
    super.key,
    required this.restaurantImage,
    required this.restaurantName,
    required this.restaurantRating,
    required this.restaurantSubtitle,
    this.discountText,
  });

  final String restaurantImage;
  final String restaurantName;
  final String restaurantRating;
  final String restaurantSubtitle;
  String? discountText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width * 0.72,
          decoration: Constants.restaurantDecoration.copyWith(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                restaurantImage,
              ),
            ),
          ),
          child: discountText == null
              ? const SizedBox()
              : Stack(
                  children: [
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      child: Container(
                        height: 21,
                        padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 8),
                        decoration: Constants.discountDecoration,
                        child: Text(
                          discountText!,
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
          width: MediaQuery.of(context).size.width * 0.72,
          child: Row(
            children: [
              Text(
                restaurantName,
                style: Constants.titleStyle,
              ),
              const Icon(
                Icons.star,
                color: Color(0xFFFFB280),
                size: 15,
              ),
              Text(
                restaurantRating,
                style: Constants.ratingStyle,
              ),
              const Spacer(),
              const Icon(
                Icons.favorite_border_outlined,
                color: Color(0xFFFE8200),
                size: 16,
              ),
            ],
          ),
        ),
        Text(
          restaurantSubtitle,
          style: Constants.subtitleStyle,
        ),
      ],
    );
  }
}
