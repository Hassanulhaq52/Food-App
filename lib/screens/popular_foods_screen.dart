import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class PopularFoodsScreen extends StatelessWidget {
  const PopularFoodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Popular Foods Nearby',
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
              PopularFoodsWidget(
                foodImage: 'assets/jollof.png',
                foodName: 'Jollof Rice',
                restaurantName: 'Pelloma Restaurant',
                trending: 'Trending  ',
                trendingContainerWidth: 85,
                restaurantDistance: '5.8 mi',
              ),
              SizedBox(
                width: 10.0,
              ),
              PopularFoodsWidget(
                foodImage: 'assets/burger.jpg',
                foodName: 'Burger',
                restaurantName: 'Suya Spot',
                trending: '',
                trendingContainerWidth: 0,
                restaurantDistance: '6.3 mi',
              ),
              SizedBox(
                width: 10.0,
              ),
              PopularFoodsWidget(
                foodImage: 'assets/bbq.jpg',
                foodName: 'Bar B Q',
                restaurantName: 'California Restaurant',
                trending: '',
                trendingContainerWidth: 0,
                restaurantDistance: '3.4 mi',
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PopularFoodsWidget extends StatelessWidget {
  const PopularFoodsWidget({
    super.key,
    required this.foodImage,
    required this.foodName,
    required this.restaurantName,
    required this.trending,
    required this.trendingContainerWidth,
    required this.restaurantDistance,
  });

  final String foodImage;
  final String foodName;
  final String restaurantName;
  final String restaurantDistance;
  final String trending;
  final double trendingContainerWidth;

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
                foodImage,
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0.0,
                left: 0.0,
                child: Container(
                  height: 24,
                  width: trendingContainerWidth,
                  padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                  decoration: Constant.discountDecoration,
                  child: Row(
                    children: [
                      Text(
                        trending,
                        textAlign: TextAlign.center,
                        style: Constant.discountStyle,
                      ),
                      Image.asset(
                        'assets/icon_trending.png',
                        height: 15,
                        width: 15,
                      ),
                    ],
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
                foodName,
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
          '$restaurantName • $restaurantDistance',
          style: Constant.subtitleStyle,
        ),
      ],
    );
  }
}
