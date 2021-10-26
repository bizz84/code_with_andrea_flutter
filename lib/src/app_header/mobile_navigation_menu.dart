import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:flutter/material.dart';

class MobileNavigationMenu extends StatelessWidget {
  const MobileNavigationMenu({Key? key}) : super(key: key);

  static const menuHeight = 56 * 4;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.neutral6,
      // TODO: Fix me
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          MobileMenuListTile(
            title: 'Tutorials',
          ),
          MobileMenuListTile(
            title: 'Courses',
          ),
          MobileMenuListTile(
            title: 'Newsletter',
          ),
          MobileMenuListTile(
            title: 'Sponsorship',
          ),
        ],
      ),
    );
  }
}

class MobileMenuListTile extends StatelessWidget {
  const MobileMenuListTile({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Text(
          title,
          textAlign: TextAlign.left,
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
