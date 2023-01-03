import 'package:flutter/material.dart';
import 'package:food_app/widgets/foods_category_widget.dart';

class FoodsCategoryScreen extends StatelessWidget {
  const FoodsCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          FoodsCategoryWidget(
            categoryName: 'W.African',
            categoryImage: 'assets/wafrican.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodsCategoryWidget(
            categoryName: 'E.African',
            categoryImage: 'assets/efrican.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodsCategoryWidget(
            categoryName: 'Snacks',
            categoryImage: 'assets/snacks.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodsCategoryWidget(
            categoryName: 'Indian',
            categoryImage: 'assets/indian.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodsCategoryWidget(
            categoryName: 'Caribbean',
            categoryImage: 'assets/caribbean.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodsCategoryWidget(
            categoryName: 'Pakistani',
            categoryImage: 'assets/pakistani.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodsCategoryWidget(
            categoryName: 'Chinese',
            categoryImage: 'assets/chinese.png',
          ),
          SizedBox(
            width: 8.0,
          ),
          FoodsCategoryWidget(
            categoryName: 'Arabic',
            categoryImage: 'assets/arabic.png',
          ),
        ],
      ),
    );
  }
}
