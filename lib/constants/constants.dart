import 'package:flutter/material.dart';

class Constant {
  static const TextStyle categoryStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    fontSize: 12.0,
  );

  static const TextStyle titleStyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );

  static const TextStyle discountStyle = TextStyle(
    color: Colors.white,
    fontSize: 11,
  );

  static const TextStyle subtitleStyle = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: Color(0xFF263238),
    fontFamily: 'Poppins',
  );

  static const TextStyle headingStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 17,
  );

  static const TextStyle ratingStyle = TextStyle(
    color: Color(0xff969696),
    fontSize: 11.5,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
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
