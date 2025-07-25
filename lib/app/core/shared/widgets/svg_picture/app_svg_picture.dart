import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvgPicture extends StatelessWidget {
  final String svgPath;
  final String semanticsLabel;
  const AppSvgPicture({
    super.key,
    required this.svgPath,
    required this.semanticsLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        svgPath,
        width: 100,
        height: 100,
        semanticsLabel: semanticsLabel,
      ),
    );
  }
}
