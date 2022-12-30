import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class FoodCategoryScreen extends StatelessWidget {
  const FoodCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          FoodCategoryWidget(
            categoryName: 'W.African',
            categoryImage: 'assets/wafrican.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodCategoryWidget(
            categoryName: 'E.African',
            categoryImage: 'assets/efrican.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodCategoryWidget(
            categoryName: 'Snacks',
            categoryImage: 'assets/snacks.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodCategoryWidget(
            categoryName: 'Indian',
            categoryImage: 'assets/indian.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodCategoryWidget(
            categoryName: 'Caribbean',
            categoryImage: 'assets/caribbean.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodCategoryWidget(
            categoryName: 'Pakistani',
            categoryImage: 'assets/pakistani.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodCategoryWidget(
            categoryName: 'Chinese',
            categoryImage: 'assets/chinese.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodCategoryWidget(
            categoryName: 'Arabic',
            categoryImage: 'assets/arabic.png',
          ),
        ],
      ),
    );
  }
}

class FoodCategoryWidget extends StatelessWidget {
  const FoodCategoryWidget({super.key, required this.categoryName, required this.categoryImage});

  final String categoryName;
  final String categoryImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: Constant.categoryDecoration,
          child: Center(
            child: Image.asset(
              categoryImage,
              height: 40,
              width: 48,
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          categoryName,
          style: Constant.categoryStyle,
        ),
      ],
    );
  }
}
