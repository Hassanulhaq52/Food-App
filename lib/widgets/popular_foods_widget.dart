import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class PopularFoodsWidget extends StatelessWidget {
  PopularFoodsWidget({
    super.key,
    required this.foodImage,
    required this.foodName,
    required this.restaurantName,
    required this.restaurantDistance,
    this.trending,
  });

  final String foodImage;
  final String foodName;
  final String restaurantName;
  final String restaurantDistance;
  String? trending;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.53,
          decoration: Constants.restaurantDecoration.copyWith(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                foodImage,
              ),
            ),
          ),
          child: trending == null
              ? SizedBox()
              : Stack(
                  children: [
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      child: Container(
                        height: 20,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 1,
                        ),
                        decoration: Constants.discountDecoration,
                        child: Row(
                          children: [
                            Text(
                              trending!,
                              textAlign: TextAlign.center,
                              style: Constants.discountStyle,
                            ),
                            const Icon(
                              Icons.trending_up_outlined,
                              size: 18,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ),
        const SizedBox(
          height: 3.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.53,
          child: Row(
            children: [
              Text(
                foodName,
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
        ),
        Text(
          '$restaurantName • $restaurantDistance',
          style: Constants.subtitleStyle,
        ),
      ],
    );
  }
}
