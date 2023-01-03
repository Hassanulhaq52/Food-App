import 'package:flutter/material.dart';

class Constants {
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
    color: Color(0xFFFFFFFF),
    fontSize: 10,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle subtitleStyle = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: Color(0xFF263238),
    fontFamily: 'Poppins',
  );

  static const TextStyle headingStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 17,
    fontFamily: 'Poppins',
  );

  static const TextStyle ratingStyle = TextStyle(
    color: Color(0xFF969696),
    fontSize: 11.5,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
  );

  static BoxDecoration discountDecoration = const BoxDecoration(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(3.0),
    ),
    color: Color(0xFF2DA24A),
  );

  static BoxDecoration categoryDecoration = BoxDecoration(
    color: const Color(0xFFEBEBEB),
    borderRadius: BorderRadius.circular(10),
  );

  static BoxDecoration restaurantDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
  );
}
