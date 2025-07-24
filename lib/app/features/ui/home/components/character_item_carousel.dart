import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/cached_image/app_cached_image.dart';
import 'package:marvel_app/app/core/shared/widgets/card/app_card.dart';

class CharacterItemCarousel extends StatelessWidget {
  final String imageUrl;
  const CharacterItemCarousel({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // mesmo valor do Card
        child: AppCachedImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          semanticsLabel: "Imagem do personagem",
        ),
      ),
    );
  }
}
