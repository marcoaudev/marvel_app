import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:marvel_app/app/core/shared/theme/colors/app_colors.dart';
import 'package:marvel_app/app/core/shared/widgets/text/app_text.dart';

class AppSliverNavigationBar extends StatelessWidget {
  final String title;
  final bool? error;
  const AppSliverNavigationBar({
    super.key,
    required this.title,
    this.error = false,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoSliverNavigationBar(
        largeTitle: Text(title, style: Theme.of(context).textTheme.titleLarge),
        backgroundColor: AppColors.primary,
        stretch: true,
        border: null,
      );
    } else {
      return SliverAppBar.large(
        title: AppText(
          title,
          semanticsLabel: "Título da página",
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18),
        ),
        pinned: true,
        backgroundColor: AppColors.primary,
        flexibleSpace: FlexibleSpaceBar(
          background: Stack(
            fit: StackFit.expand,
            children: [
              Opacity(
                opacity: 0.5,
                child: Image.asset(
                  'assets/images/characters.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
