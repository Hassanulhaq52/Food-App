import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

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
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: Constant.restaurantDecoration.copyWith(
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/burger.jpg'),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          child: Container(
                            height: 22,
                            width: 55,
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            decoration: Constant.discountDecoration,
                            child: const Text(
                              '15% Off',
                              textAlign: TextAlign.center,
                              style: Constant.discountStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Row(
                      children: [
                        const Text(
                          'Obosa Restaurant ',
                          style: Constant.titleStyle,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade800,
                          size: 18,
                        ),
                        const Text(
                          ' 4.5',
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
                  const Text(
                    '7.2 mi • 15 min • \$4.90 Delivery Fee',
                    style: Constant.subtitleStyle,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: Constant.restaurantDecoration.copyWith(
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/roll.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Row(
                      children: [
                        const Text(
                          'Pelloma Restaurant ',
                          style: Constant.titleStyle,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade800,
                          size: 18,
                        ),
                        const Text(
                          ' 4.9',
                          style: Constant.ratingStyle,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.favorite_outline_sharp,
                          color: Colors.yellow.shade800,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    '5.8 mi • 10 min • \$3.60 Delivery Fee',
                    style: Constant.subtitleStyle,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: Constant.restaurantDecoration.copyWith(
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/pizza.jpg'),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          child: Container(
                            height: 22,
                            width: 80,
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            decoration: Constant.discountDecoration,
                            child: const Text(
                              'Upto 70% Off',
                              textAlign: TextAlign.center,
                              style: Constant.discountStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Row(
                      children: [
                        const Text(
                          'California Restaurant ',
                          style: Constant.titleStyle,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade800,
                          size: 18,
                        ),
                        const Text(
                          ' 3.2',
                          style: Constant.ratingStyle,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.favorite_outline_sharp,
                          color: Colors.yellow.shade800,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    '3.4 mi • 7 min • \$2.40 Delivery Fee',
                    style: Constant.subtitleStyle,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
