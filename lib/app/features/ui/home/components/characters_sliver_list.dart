import 'package:flutter/material.dart';
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';
import 'package:marvel_app/app/features/ui/home/components/character_list_item.dart';

class CharactersSliverList extends StatelessWidget {
  final List<CharacterEntity> characters;
  const CharactersSliverList({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return CharacterListItem(character: characters[index], onTap: () {});
      },
    );
  }
}
