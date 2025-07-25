import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/app/core/shared/widgets/app_bar/app_sliver_navigation_bar.dart';
import 'package:marvel_app/app/core/shared/widgets/loading/app_loading.dart';
import 'package:marvel_app/app/features/ui/home/blocs/home_bloc.dart';
import 'package:marvel_app/app/features/ui/home/blocs/home_event.dart';
import 'package:marvel_app/app/features/ui/home/blocs/home_state.dart';
import 'package:marvel_app/app/features/ui/home/components/characters_carousel.dart';
import 'package:marvel_app/app/features/ui/home/components/characters_sliver_list.dart';
import 'package:marvel_app/app/features/ui/home/components/title_description.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<HomeBloc>(context, listen: false);
    bloc.add(FetchCharacters());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            List<Widget> child = [];

            if (state is LoadingHomeState) {
              child = [SliverToBoxAdapter(child: AppLoading())];
            }

            if (state is FailedHomeState) {
              child = [
                AppSliverNavigationBar(title: "Marvel App", error: true),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(child: Text("erro")),
                ),
              ];
            }

            if (state is SuccessHomeState) {
              final mainCharacters = state.characters.take(5).toList();
              final allCharacters = state.characters.skip(5).toList();
              child = [
                AppSliverNavigationBar(title: "Marvel App"),
                TitleDescription(title: "Personagens principais"),
                CharactersCarousel(characters: mainCharacters),
                TitleDescription(title: "Todos os personagens"),
                CharactersSliverList(characters: allCharacters),
              ];
            }

            return CustomScrollView(
              controller: bloc.scrollController,
              slivers: [...child],
            );
          },
        ),
      ),
    );
  }
}
