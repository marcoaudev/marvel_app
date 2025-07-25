import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/svg_picture/app_svg_picture.dart';

class AppInternalServerError extends StatelessWidget {
  const AppInternalServerError({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSvgPicture(
      svgPath: "assets/svg/500_internal_server_error.svg",
      semanticsLabel: "Imagem ilustrativa de erro do servidor",
    );
  }
}
