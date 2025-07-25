import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/cached_image/app_cached_image.dart';
import 'package:marvel_app/app/core/shared/widgets/card/app_card.dart';
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';

class CharacterItemCarousel extends StatelessWidget {
  final CharacterEntity character;
  const CharacterItemCarousel({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // mesmo valor do Card
        child: AppCachedImage(
          imageUrl:
              '${character.thumbnail.path}.${character.thumbnail.extension}',
          fit: BoxFit.cover,
          semanticsLabel: "Imagem do personagem",
        ),
      ),
    );
  }
}
