import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/app_text_theme.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:flutter/material.dart';

class IntroHeader extends StatelessWidget {
  const IntroHeader({super.key});

  double topPadding(double maxWidth) {
    if (maxWidth > Breakpoints.tablet) {
      return 122;
    } else if (maxWidth > Breakpoints.mobile) {
      return 71;
    } else {
      return 53;
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: 880,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: topPadding(screenWidth)),
            Text(
              'Learn Dart, Flutter & Firebase',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: Colors.white),
            ),
            const SizedBox(height: 32),
            RichText(
              text: TextSpan(
                text:
                    'Want to become a Flutter Pro and create production-ready apps?\n'
                    'Search the site or browse my tutorials to fast-track your learning, ',
                style: DesktopTextTheme()
                    .paragraph20
                    .copyWith(color: AppColors.neutral2),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'all for free!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
