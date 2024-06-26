import 'package:code_with_andrea_flutter/gen/assets.gen.dart';
import 'package:code_with_andrea_flutter/src/features/app_header/mobile_navigation_menu.dart';
import 'package:code_with_andrea_flutter/src/features/app_header/navigation_icon_button.dart';
import 'package:code_with_andrea_flutter/src/features/app_header/navigation_link.dart';
import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    bool isWide = screenWidth > Breakpoints.tablet;
    return Container(
      color: AppColors.neutral7,
      child: isWide
          ? const DesktopNavigationLayout()
          : const MobileNavigationLayout(),
    );
  }
}

class DesktopNavigationLayout extends StatelessWidget {
  const DesktopNavigationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    bool isVeryWide = screenWidth > Breakpoints.desktop;
    return SizedBox(
      height: 64,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: isVeryWide ? 80 : 28),
          Assets.appLogo.image(),
          const Spacer(),
          const NavigationLink(text: 'Tutorials'),
          const NavigationLink(text: 'Courses'),
          const NavigationLink(text: 'Newsletter'),
          const NavigationLink(text: 'Sponsorship'),
          NavigationIconButton(child: Assets.search.image()),
          NavigationIconButton(child: Assets.toggleDay.image()),
          SizedBox(width: isVeryWide ? 80 : 28),
        ],
      ),
    );
  }
}

class MobileNavigationLayout extends StatefulWidget {
  const MobileNavigationLayout({super.key});

  @override
  State<MobileNavigationLayout> createState() => _MobileNavigationLayoutState();
}

class _MobileNavigationLayoutState extends State<MobileNavigationLayout>
    with SingleTickerProviderStateMixin {
  late final _menuController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 150),
  );

  @override
  void dispose() {
    _menuController.dispose();
    super.dispose();
  }

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
                    Assets.appLogo.image(),
                    const Spacer(),
                    NavigationIconButton(child: Assets.search.image()),
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
      },
    );
  }
}
