import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/african.png',
                      height: 60,
                      width: 60,
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
                width: 12.0,
              ),
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/arabic.png',
                      height: 60,
                      width: 60,
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
                width: 12.0,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/caribbean.png',
                      height: 80,
                      width: 80,
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
                width: 12.0,
              ),
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/chinese.png',
                      height: 60,
                      width: 60,
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
                width: 12.0,
              ),
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/indian.png',
                      height: 60,
                      width: 60,
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
                width: 12.0,
              ),
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/pakistani.png',
                      height: 60,
                      width: 60,
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
              const SizedBox(
                width: 12.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
