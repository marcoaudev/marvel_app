import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/svg_picture/app_svg_picture.dart';

class AppUnknownError extends StatelessWidget {
  const AppUnknownError({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSvgPicture(
      svgPath: "assets/svg/unknown_error.svg",
      semanticsLabel: "Imagem ilustrativa de erro desconhecido",
    );
  }
}
