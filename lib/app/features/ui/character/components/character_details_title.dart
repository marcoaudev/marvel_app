import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/text/app_text.dart';

class CharacterDetailsTitle extends StatelessWidget {
  final String name;
  const CharacterDetailsTitle({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: AppText(name, style: Theme.of(context).textTheme.titleLarge),
    );
  }
}
