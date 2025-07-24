import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/widgets/text/app_text.dart';

class TitleDescription extends StatelessWidget {
  final String title;
  const TitleDescription({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: AppText(
            title,
            style: Theme.of(context).textTheme.titleMedium,
            semanticsLabel: "Titulo: $title",
          ),
        ),
      ),
    );
  }
}
