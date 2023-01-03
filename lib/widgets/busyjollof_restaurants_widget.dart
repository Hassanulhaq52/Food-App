import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class BusyJollofRestaurantsWidget extends StatelessWidget {
  const BusyJollofRestaurantsWidget({
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
          decoration: Constants.restaurantDecoration.copyWith(
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
          restaurantSubtitle,
          style: Constants.subtitleStyle,
        ),
      ],
    );
  }
}
