import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/theme/colors/app_colors.dart';
import 'package:marvel_app/app/core/shared/theme/text/theme_text.dart';
import 'package:marvel_app/app/features/ui/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
        scaffoldBackgroundColor: const Color.fromARGB(255, 15, 11, 11),
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.primary),
        textTheme: TextTheme(
          titleMedium: AppTextStyle.titleMedium(context),
          titleSmall: AppTextStyle.titleSmall(context),
          bodyMedium: AppTextStyle.bodyMedium(context),
        ),
      ),
      home: HomePage(),
    );
  }
}
