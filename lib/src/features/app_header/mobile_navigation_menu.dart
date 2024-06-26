import 'package:code_with_andrea_flutter/gen/assets.gen.dart';
import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:flutter/material.dart';

class MobileNavigationMenu extends StatelessWidget {
  const MobileNavigationMenu({super.key});

  static const menuHeight = 56 * 4 + 64;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.neutral6,
      child: ListView(
        shrinkWrap: true,
        children: [
          const MobileMenuListTile(
            title: 'Tutorials',
          ),
          const MobileMenuListTile(
            title: 'Courses',
          ),
          const MobileMenuListTile(
            title: 'Newsletter',
          ),
          const MobileMenuListTile(
            title: 'Sponsorship',
          ),
          Container(
            height: 64.0,
            alignment: Alignment.center,
            child: MobileToggleButton(onPressed: () {}),
          ),
        ],
      ),
    );
  }
}

class MobileMenuListTile extends StatelessWidget {
  const MobileMenuListTile({super.key, required this.title});
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
              .titleSmall!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

class MobileToggleButton extends StatelessWidget {
  const MobileToggleButton({super.key, this.onPressed});
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.neutral6,
        side: const BorderSide(color: AppColors.neutral2),
        shape: const StadiumBorder(),
      ),
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.toggleDay.image(),
            const SizedBox(width: 12),
            Text(
              'Switch to light mode',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
