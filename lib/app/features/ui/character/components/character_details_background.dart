import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/theme/colors/app_colors.dart';
import 'package:marvel_app/app/core/shared/widgets/cached_image/app_cached_image.dart';

class CharacterDetailsBackground extends StatelessWidget {
  final String imageUrl;
  const CharacterDetailsBackground({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Hero(
        tag: imageUrl,
        child: AppCachedImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          color: AppColors.opacity,
          colorBlendMode: BlendMode.darken,
          semanticsLabel: '',
        ),
      ),
    );
  }
}
