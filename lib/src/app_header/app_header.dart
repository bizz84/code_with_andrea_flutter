import 'package:code_with_andrea_flutter/src/app_header/app_logo.dart';
import 'package:code_with_andrea_flutter/src/app_header/navigation_icon_button.dart';
import 'package:code_with_andrea_flutter/src/app_header/navigation_link.dart';
import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/constants/constants.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.neutral6,
      height: 64,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > Breakpoints.desktop) {
          return const DesktopNavigationLayout();
        } else {
          return const MobileNavigationLayout();
        }
      }),
    );
  }
}

class DesktopNavigationLayout extends StatelessWidget {
  const DesktopNavigationLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SizedBox(width: 80),
        AppLogo(),
        Spacer(),
        NavigationLink(text: 'Tutorials'),
        NavigationLink(text: 'Courses'),
        NavigationLink(text: 'Newsletter'),
        NavigationLink(text: 'Sponsorship'),
        NavigationIconButton(assetName: Constants.search),
        NavigationIconButton(assetName: Constants.toggleDay),
        SizedBox(width: 80),
      ],
    );
  }
}

class MobileNavigationLayout extends StatelessWidget {
  const MobileNavigationLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SizedBox(width: 28),
        AppLogo(),
        Spacer(),
        NavigationIconButton(assetName: Constants.search),
        NavigationIconButton(assetName: Constants.hamburgerMenu),
        SizedBox(width: 28),
      ],
    );
  }
}
