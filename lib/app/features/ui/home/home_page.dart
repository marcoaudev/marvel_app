import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/app_bar/app_sliver_navigation_bar.dart';
import 'package:marvel_app/app/features/ui/home/components/characters_carousel.dart';
import 'package:marvel_app/app/features/ui/home/components/characters_sliver_list.dart';
import 'package:marvel_app/app/features/ui/home/components/title_description.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            AppSliverNavigationBar(title: "Marvel App"),
            TitleDescription(title: "Personagens em destaque"),
            CharactersCarousel(),
            TitleDescription(title: "Todos os personagens"),
            CharactersSliverList(),
          ],
        ),
      ),
    );
  }
}
