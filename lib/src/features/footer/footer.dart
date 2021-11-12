import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/features/app_header/app_logo.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Breakpoints.desktop.toDouble(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppLogo(),
            const SizedBox(height: 16),
            Text(
              'Copyright © 2021 Coding With Flutter Limited',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: AppColors.neutral4, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 88),
            Container(
              color: Colors.white.withOpacity(0.2),
              height: 1,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                FooterLink(text: 'Contact'),
                Spacer(),
                FooterLink(text: 'Twitter'),
                FooterLink(text: 'Slack'),
                FooterLink(text: 'GitHub'),
                FooterLink(text: 'RSS'),
                FooterLink(text: 'Meta'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FooterLink extends StatelessWidget {
  const FooterLink({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .subtitle2!
          .copyWith(color: Colors.white, fontWeight: FontWeight.normal),
    );
  }
}
