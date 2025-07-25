import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static final TextStyle baseTextStyle = TextStyle(fontFamily: 'Nunito');

  static TextStyle titleLarge(BuildContext context) => baseTextStyle.copyWith(
    fontSize: 26,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    shadows: [
      Shadow(blurRadius: 10, color: Colors.black, offset: Offset(2, 2)),
    ],
  );

  static TextStyle titleMedium(BuildContext context) => baseTextStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );

  static TextStyle titleSmall(BuildContext context) => baseTextStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(221, 0, 41, 1),
  );

  static TextStyle bodyMedium(BuildContext context) => baseTextStyle.copyWith(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  );
}
