import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160,
                width: 270,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/burger.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Obosa Restaurant',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '7.2 mi . 15 min . \$4.90 Delivery Fee',
                // style: TextStyle(color: Colors.black54),
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
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/roll.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Obosa Restaurant',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '7.2 mi . 15 min . \$4.90 Delivery Fee',
                // style: TextStyle(color: Colors.black54),
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
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/pizza.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Obosa Restaurant',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '7.2 mi . 15 min . \$4.90 Delivery Fee',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
