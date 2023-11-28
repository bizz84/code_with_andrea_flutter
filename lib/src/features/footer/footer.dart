import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/features/app_header/app_logo.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > Breakpoints.tablet;
    return Center(
      child: SizedBox(
        width: Breakpoints.desktop.toDouble(),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontalPadding(screenWidth)),
          child: Column(
            crossAxisAlignment:
                isWide ? CrossAxisAlignment.start : CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              const AppLogo(),
              const SizedBox(height: 16),
              Text(
                'Copyright © 2021 Coding With Flutter Limited',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: AppColors.neutral4, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: isWide ? 88 : 44),
              Container(
                color: Colors.white.withOpacity(0.2),
                height: 1,
              ),
              const SizedBox(height: 32),
              const FooterLinks(),
              SizedBox(height: isWide ? 112 : 96),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > Breakpoints.tablet;
    if (isWide) {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FooterLink(text: 'Contact'),
          Spacer(),
          FooterLink(text: 'Twitter'),
          SizedBox(width: 32),
          FooterLink(text: 'Slack'),
          SizedBox(width: 32),
          FooterLink(text: 'GitHub'),
          SizedBox(width: 32),
          FooterLink(text: 'RSS'),
          SizedBox(width: 32),
          FooterLink(text: 'Meta'),
        ],
      );
    } else {
      return const Column(
        children: [
          FooterLink(text: 'Contact'),
          SizedBox(height: 40),
          FooterLink(text: 'Twitter'),
          SizedBox(height: 40),
          FooterLink(text: 'Slack'),
          SizedBox(height: 40),
          FooterLink(text: 'GitHub'),
          SizedBox(height: 40),
          FooterLink(text: 'RSS'),
          SizedBox(height: 40),
          FooterLink(text: 'Meta'),
        ],
      );
    }
  }
}

class FooterLink extends StatelessWidget {
  const FooterLink({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleSmall!
          .copyWith(color: Colors.white, fontWeight: FontWeight.normal),
    );
  }
}
