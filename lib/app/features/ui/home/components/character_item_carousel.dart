import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/cached_image/app_cached_image.dart';
import 'package:marvel_app/app/core/shared/widgets/card/app_card.dart';
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';
import 'package:marvel_app/app/features/ui/character/character_details_page.dart';

class CharacterItemCarousel extends StatelessWidget {
  final CharacterEntity character;
  const CharacterItemCarousel({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => CharacterDetailsPage(character: character),
          ),
        );
      },
      child: AppCard(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: AppCachedImage(
            imageUrl: character.thumbnail.toString(),
            fit: BoxFit.cover,
            semanticsLabel: "Imagem do personagem",
          ),
        ),
      ),
    );
  }
}
