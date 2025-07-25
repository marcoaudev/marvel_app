import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/app/core/shared/injector/app_injector.dart';
import 'package:marvel_app/app/core/shared/theme/colors/app_colors.dart';
import 'package:marvel_app/app/core/shared/theme/text/theme_text.dart';
import 'package:marvel_app/app/features/ui/home/blocs/home_bloc.dart';
import 'package:marvel_app/app/features/ui/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeBloc>(),
      child: MaterialApp(
        title: 'Marvel App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Nunito',
          scaffoldBackgroundColor: AppColors.background,
          appBarTheme: const AppBarTheme(backgroundColor: AppColors.primary),
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: AppColors.primary,
          ),
          colorSchemeSeed: AppColors.primary,
          textTheme: TextTheme(
            titleLarge: AppTextStyle.titleLarge(context),
            titleMedium: AppTextStyle.titleMedium(context),
            titleSmall: AppTextStyle.titleSmall(context),
            bodyMedium: AppTextStyle.bodyMedium(context),
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
