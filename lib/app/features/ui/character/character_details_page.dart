import 'package:flutter/material.dart';
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';
import 'package:marvel_app/app/features/ui/character/components/character_details_background.dart';
import 'package:marvel_app/app/features/ui/character/components/character_details_title.dart';
import 'package:marvel_app/app/features/ui/character/components/character_details_info.dart';

class CharacterDetailsPage extends StatelessWidget {
  final CharacterEntity character;

  const CharacterDetailsPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CharacterDetailsBackground(
            imageUrl: character.thumbnail.toString(),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 28,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                const SizedBox(height: 16),
                CharacterDetailsTitle(name: character.name),
                const SizedBox(height: 16),
                Expanded(child: CharacterDetailsInfo(description: character.description)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
