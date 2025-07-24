import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static final TextStyle baseTextStyle = TextStyle(fontFamily: 'Nunito');

  static TextStyle titleMedium(BuildContext context) => baseTextStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );

  static TextStyle titleSmall(BuildContext context) => baseTextStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(133, 0, 24, 1),
  );

  static TextStyle bodyMedium(BuildContext context) => baseTextStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  );
}
