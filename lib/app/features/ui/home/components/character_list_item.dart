import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/cached_image/app_cached_image.dart';
import 'package:marvel_app/app/core/shared/widgets/card/app_card.dart';
import 'package:marvel_app/app/core/shared/widgets/text/app_text.dart';

class CharacterListItem extends StatelessWidget {
  final String name;
  final String description;
  final VoidCallback? onTap;

  const CharacterListItem({
    super.key,
    required this.name,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
                      semanticsLabel: "Imagem do personagem: $name",
                      imageUrl:
                          'http://i.annihil.us/u/prod/marvel/i/mg/c/e0/35fecbbb9784.jpg',
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(
                      name,
                      style: Theme.of(context).textTheme.titleSmall,
                      semanticsLabel: "Nome do personagem: $name",
                    ),
                    const SizedBox(height: 4),
                    AppText(
                      description,
                      style: Theme.of(context).textTheme.bodyMedium,
                      semanticsLabel: "Descrição do personagem: $description",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
