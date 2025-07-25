import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/app/core/shared/widgets/app_bar/app_sliver_navigation_bar.dart';
import 'package:marvel_app/app/core/shared/widgets/errors/app_internal_server_error.dart';
import 'package:marvel_app/app/core/shared/widgets/errors/app_unauthorized_error.dart';
import 'package:marvel_app/app/core/shared/widgets/errors/app_unknown_error.dart';
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
              child = [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(child: AppLoading()),
                ),
              ];
            }

            if (state is FailedHomeState) {
              final error = state.error.toLowerCase();
              switch (error) {
                case "unauthorized":
                  child = [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(child: AppUnauthorizedError()),
                    ),
                  ];
                  break;
                case "server unavailable":
                  child = [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(child: AppInternalServerError()),
                    ),
                  ];
                  break;
                default:
                  child = [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(child: AppUnknownError()),
                    ),
                  ];
                  break;
              }
            }

            if (state is SuccessHomeState) {
              final mainCharacters = state.characters.take(5).toList();
              final allCharacters = state.characters.skip(5).toList();
              child = [
                TitleDescription(title: "Personagens principais"),
                CharactersCarousel(characters: mainCharacters),
                TitleDescription(title: "Todos os personagens"),
                CharactersSliverList(characters: allCharacters),
              ];
            }

            return CustomScrollView(
              controller: bloc.scrollController,
              slivers: [AppSliverNavigationBar(title: "Marvel App"), ...child],
            );
          },
        ),
      ),
    );
  }
}
