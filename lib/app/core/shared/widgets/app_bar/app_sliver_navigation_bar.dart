import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:marvel_app/app/core/shared/images/app_images.dart';

class AppSliverNavigationBar extends StatelessWidget {
  final String title;
  const AppSliverNavigationBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoSliverNavigationBar(
        largeTitle: Text(title, style: Theme.of(context).textTheme.titleLarge),
        backgroundColor: Color.fromRGBO(164, 1, 31, 0.9),
        stretch: true,
        border: null,
      );
    } else {
      return SliverAppBar.large(
        title: Text(title, style: Theme.of(context).textTheme.titleLarge),
        pinned: true,
        backgroundColor: Color.fromRGBO(164, 1, 31, 0.9),
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: const Color.fromARGB(230, 0, 0, 0),
            child: Image.asset(AppImages.allCharacters, fit: BoxFit.cover),
          ),
        ),
      );
    }
  }
}
