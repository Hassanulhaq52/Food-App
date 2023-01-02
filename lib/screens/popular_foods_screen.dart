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
              'Popular Foods nearby',
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              PopularFoodsWidget(
                foodImage: 'assets/jollof.png',
                foodName: 'Jollof Rice',
                restaurantName: 'Pelloma Restaurant',
                trending: 'Trending ',
                trendingContainerWidth: 76,
                restaurantDistance: '5.8 mi',
              ),
              SizedBox(
                width: 10.0,
              ),
              PopularFoodsWidget(
                foodImage: 'assets/soup.png',
                foodName: 'Egwusi Soup',
                restaurantName: 'Suya Spot',
                trending: '',
                trendingContainerWidth: 0,
                restaurantDistance: '4.5 mi',
              ),
              SizedBox(
                width: 10.0,
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
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.53,
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                  ),
                  decoration: Constant.discountDecoration,
                  child: Row(
                    children: [
                      Text(
                        trending,
                        textAlign: TextAlign.center,
                        style: Constant.discountStyle,
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
