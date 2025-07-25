import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/page_view/app_page_view.dart'; // Assuming app_page_view.dart now contains the updated AppCarousel
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';
import 'package:marvel_app/app/features/ui/home/components/character_item_carousel.dart';

class CharactersCarousel extends StatelessWidget {
  final List<CharacterEntity> characters;
  const CharactersCarousel({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 180,
        child: AppCarousel(
          items:
              characters.map((character) {
                return CharacterItemCarousel(character: character);
              }).toList(),
        ),
      ),
    );
  }
}
