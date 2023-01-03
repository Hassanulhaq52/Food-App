import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class FoodsCategoryWidget extends StatelessWidget {
  const FoodsCategoryWidget({super.key, required this.categoryName, required this.categoryImage});

  final String categoryName;
  final String categoryImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.18,
          decoration: Constants.categoryDecoration,
          child: Center(
            child: Image.asset(
              categoryImage,
              height: 40,
              width: 53,
            ),
          ),
        ),
        const SizedBox(
          height: 7.0,
        ),
        Text(
          categoryName,
          style: Constants.categoryStyle,
        ),
      ],
    );
  }
}
