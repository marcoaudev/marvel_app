import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/svg_picture/app_svg_picture.dart';

class AppUnauthorizedError extends StatelessWidget {
  const AppUnauthorizedError({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSvgPicture(
      svgPath: "assets/svg/401_error_unauthorized.svg",
      semanticsLabel: "Imagem ilustrativa de erro de credenciais inválidas",
    );
  }
}
