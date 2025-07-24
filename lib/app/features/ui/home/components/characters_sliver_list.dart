import 'package:flutter/material.dart';
import 'package:marvel_app/app/features/ui/home/components/character_list_item.dart';

class CharactersSliverList extends StatelessWidget {
  const CharactersSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return CharacterListItem(
          name: 'Personagem ${index + 1}',
          description: 'Descrição do personagem',
          onTap: () {}, 
        );
      },
    );
  }
}
