import 'package:code_with_andrea_flutter/src/app_header/app_logo.dart';
import 'package:code_with_andrea_flutter/src/app_header/mobile_navigation_menu.dart';
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
    return SizedBox(
      height: 64,
      child: Row(
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
      ),
    );
  }
}

class MobileNavigationLayout extends StatefulWidget {
  const MobileNavigationLayout({Key? key}) : super(key: key);

  @override
  State<MobileNavigationLayout> createState() => _MobileNavigationLayoutState();
}

class _MobileNavigationLayoutState extends State<MobileNavigationLayout>
    with SingleTickerProviderStateMixin {
  late final _menuController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 150));

  void _toggleMenu() {
    if (_menuController.isCompleted) {
      _menuController.reverse();
    } else {
      _menuController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _menuController,
        builder: (context, _) {
          final height =
              64 + _menuController.value * MobileNavigationMenu.menuHeight;
          return SizedBox(
            height: height,
            child: Column(
              children: [
                SizedBox(
                  height: 64,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 28),
                      const AppLogo(),
                      const Spacer(),
                      const NavigationIconButton(assetName: Constants.search),
                      // TODO: Use AnimatedIcon
                      GestureDetector(
                        onTap: _toggleMenu,
                        child: AnimatedIcon(
                          icon: AnimatedIcons.menu_close,
                          progress: _menuController,
                          color: AppColors.neutral2,
                        ),
                      ),
                      //NavigationIconButton(assetName: Constants.hamburgerMenu),
                      const SizedBox(width: 28),
                    ],
                  ),
                ),
                const Expanded(child: MobileNavigationMenu()),
              ],
            ),
          );
        });
  }
}
