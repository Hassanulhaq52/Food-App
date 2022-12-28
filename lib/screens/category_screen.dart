import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: boxDecoration,
                child: Image.asset(
                  'assets/african.png',
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'African',
                style: textStyle,
              ),
            ],
          ),
          const SizedBox(
            width: 8.0,
          ),
          Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: boxDecoration,
                child: Image.asset(
                  'assets/arabic.png',
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'Arabic',
                style: textStyle,
              ),
            ],
          ),
          const SizedBox(
            width: 8.0,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                height: 60,
                width: 60,
                decoration: boxDecoration,
                child: Image.asset(
                  'assets/caribbean.png',
                  // height: 80,
                  // width: 80,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'Caribbean',
                style: textStyle,
              ),
            ],
          ),
          const SizedBox(
            width: 8.0,
          ),
          Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: boxDecoration,
                child: Image.asset(
                  'assets/chinese.png',
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'Chinese',
                style: textStyle,
              ),
            ],
          ),
          const SizedBox(
            width: 8.0,
          ),
          Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: boxDecoration,
                child: Image.asset(
                  'assets/indian.png',
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'Indian',
                style: textStyle,
              ),
            ],
          ),
          const SizedBox(
            width: 8.0,
          ),
          Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: boxDecoration,
                child: Image.asset(
                  'assets/pakistani.png',
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'Pakistani',
                style: textStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}