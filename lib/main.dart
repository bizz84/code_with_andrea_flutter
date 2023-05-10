import 'package:code_with_andrea_flutter/src/constants/app_text_theme.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/features/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // TODO: Save this as breakpoint
      final isDesktop = constraints.maxWidth > Breakpoints.tablet;
      final textTheme = isDesktop ? DesktopTextTheme() : MobileTextTheme();
      return MaterialApp(
        title: 'Code With Andrea',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            displayLarge: textTheme.h1,
            displayMedium: textTheme.h2,
            displaySmall: textTheme.h3,
            headlineMedium: textTheme.h4,
            headlineSmall: textTheme.h5,
            titleLarge: textTheme.h6,
            titleMedium: textTheme.subtitle1,
            titleSmall: textTheme.subtitle2,
            bodyLarge: textTheme.body,
            labelLarge: textTheme.button,
          ),
          //cardColor: AppColors.neutral6,
          // TODO: Make it work!
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        home: const HomePage(),
      );
    });
  }
}
