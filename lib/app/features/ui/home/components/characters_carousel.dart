import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/page_view/app_page_view.dart';
import 'package:marvel_app/app/features/ui/home/components/character_item_carousel.dart';

class CharactersCarousel extends StatelessWidget {
  const CharactersCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 180,
        child: AppCarousel(
          items: List.generate(
            5,
            (index) => CharacterItemCarousel(
              imageUrl:
                  'http://i.annihil.us/u/prd/marvel/i/mg/c/e0/535fecbbb9784.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
