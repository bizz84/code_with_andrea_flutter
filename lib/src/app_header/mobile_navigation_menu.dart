import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/constants.dart';
import 'package:flutter/material.dart';

class MobileNavigationMenu extends StatelessWidget {
  const MobileNavigationMenu({Key? key}) : super(key: key);

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
          )
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

class MobileToggleButton extends StatelessWidget {
  const MobileToggleButton({Key? key, this.onPressed}) : super(key: key);
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Constants.toggleDay),
            const SizedBox(width: 12),
            Text('Switch to light mode',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Colors.white)),
          ],
        ),
      ),
      style: OutlinedButton.styleFrom(
        primary: AppColors.neutral6,
        side: const BorderSide(color: AppColors.neutral2),
        shape: const StadiumBorder(),
      ),
    );
  }
}
