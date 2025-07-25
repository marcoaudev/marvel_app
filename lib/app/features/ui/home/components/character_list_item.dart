import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/cached_image/app_cached_image.dart';
import 'package:marvel_app/app/core/shared/widgets/card/app_card.dart';
import 'package:marvel_app/app/core/shared/widgets/text/app_text.dart';
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';
import 'package:marvel_app/app/features/ui/character/character_details_page.dart';

class CharacterListItem extends StatelessWidget {
  final CharacterEntity character;
  final VoidCallback? onTap;

  const CharacterListItem({super.key, this.onTap, required this.character});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CharacterDetailsPage(character: character),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              SizedBox(
                width: 120,
                child: AppCard(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: AppCachedImage(
                      semanticsLabel: "Imagem do personagem: ${character.name}",
                      imageUrl:
                          '${character.thumbnail.path}.${character.thumbnail.extension}',
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppText(
                        character.name,
                        style: Theme.of(context).textTheme.titleSmall,
                        semanticsLabel: "Nome do personagem: ${character.name}",
                      ),
                      const SizedBox(height: 4),
                      Expanded(
                        child: AppText(
                          character.description,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.bodyMedium,
                          semanticsLabel:
                              "Descrição do personagem: ${character.description}",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
