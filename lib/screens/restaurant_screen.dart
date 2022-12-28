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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              'View all',
              style: Constant.textStyle,
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
                    height: 160,
                    width: 270,
                    decoration: Constant.restaurantDecoration.copyWith(
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/burger.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  SizedBox(
                    width: 270,
                    child: Row(
                      children: [
                        const Text(
                          'Obosa Restaurant ',
                          style: Constant.textStyle,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade800,
                          size: 18,
                        ),
                        const Text(' 4.5'),
                        const Spacer(),
                        Icon(
                          Icons.favorite_outline_sharp,
                          color: Colors.yellow.shade800,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    '7.2 mi . 15 min . \$4.90 Delivery Fee',
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
                    height: 160,
                    width: 270,
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
                    width: 270,
                    child: Row(
                      children: [
                        const Text(
                          'Pelloma Restaurant ',
                          style: Constant.textStyle,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade800,
                          size: 18,
                        ),
                        const Text(' 4.9'),
                        const Spacer(),
                        Icon(
                          Icons.favorite_outline_sharp,
                          color: Colors.yellow.shade800,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    '5.8 mi . 10 min . \$3.60 Delivery Fee',
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
                    height: 160,
                    width: 270,
                    decoration: Constant.restaurantDecoration.copyWith(
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/pizza.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  SizedBox(
                    width: 270,
                    child: Row(
                      children: [
                        const Text(
                          'California Restaurant ',
                          style: Constant.textStyle,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade800,
                          size: 18,
                        ),
                        const Text(' 3.2'),
                        const Spacer(),
                        Icon(
                          Icons.favorite_outline_sharp,
                          color: Colors.yellow.shade800,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    '3.4 mi . 7 min . \$2.40 Delivery Fee',
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

//
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// height: 160,
// width: 270,
// decoration: Constant.restaurantDecoration.copyWith(
// image: const DecorationImage(
// fit: BoxFit.fill,
// image: AssetImage('assets/burger.jpg'),
// ),
// ),
// ),
// const SizedBox(
// height: 5.0,
// ),
// SizedBox(
// width: 270,
// child: Row(
// children: [
// const Text(
// 'Obosa Restaurant ',
// style: Constant.textStyle,
// ),
// Icon(
// Icons.star,
// color: Colors.yellow.shade800,
// size: 18,
// ),
// const Text(' 4.5'),
// const Spacer(),
// Icon(
// Icons.favorite_outline_sharp,
// color: Colors.yellow.shade800,
// ),
// ],
// ),
// ),
// const Text(
// '7.2 mi . 15 min . \$4.90 Delivery Fee',
// ),
// ],
// ),
// const SizedBox(
// width: 10,
// ),
