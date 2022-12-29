import 'package:flutter/material.dart';

class Constant {
  static const TextStyle categoryStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 13.0,
  );

  static const TextStyle titleStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle discountStyle = TextStyle(
    color: Colors.white,
    fontSize: 11,
  );

  static const TextStyle subtitleStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );

  static const TextStyle headingStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 19,
  );

  static const TextStyle ratingStyle = TextStyle(
    color: Colors.grey,
    fontSize: 13,
    fontWeight: FontWeight.bold,
  );

  static BoxDecoration discountDecoration = BoxDecoration(
    borderRadius: const BorderRadius.only(
      topRight: Radius.circular(3.0),
    ),
    color: Colors.green.shade700,
  );

  static BoxDecoration categoryDecoration = BoxDecoration(
    color: Colors.grey.shade300,
    borderRadius: BorderRadius.circular(10),
  );

  static BoxDecoration restaurantDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
  );
}
