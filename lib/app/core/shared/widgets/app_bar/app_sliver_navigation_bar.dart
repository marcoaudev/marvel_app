import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:marvel_app/app/core/shared/images/app_images.dart';
import 'package:marvel_app/app/core/shared/theme/colors/app_colors.dart';

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
        title: Text(title, style: Theme.of(context).textTheme.titleMedium),
        pinned: true,
        backgroundColor: AppColors.primary,
        flexibleSpace:
            error!
                ? null
                : FlexibleSpaceBar(
                  background: Container(
                    color: const Color.fromARGB(230, 0, 0, 0),
                    child: Image.asset(
                      AppImages.allCharacters,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
      );
    }
  }
}
