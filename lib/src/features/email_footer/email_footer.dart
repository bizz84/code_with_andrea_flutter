import 'dart:math';

import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/features/common_widgets/email_signup_button.dart';
import 'package:code_with_andrea_flutter/src/features/common_widgets/email_text_field.dart';
import 'package:flutter/material.dart';

class EmailFooterSection extends StatelessWidget {
  const EmailFooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.primary,
      child: Center(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontalPadding(screenWidth)),
          child: Column(
            children: [
              const SizedBox(height: 80),
              Text(
                'Get the best Flutter tutorials, right in your inbox.',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 24),
              const EmailFooterSectionBody(),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailFooterSectionBody extends StatelessWidget {
  const EmailFooterSectionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 337,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          FooterEmailTextField(),
          SizedBox(height: 16),
          FooterEmailSignupButton(),
          SizedBox(height: 16),
          EmailFormFooterText(),
        ],
      ),
    );
  }
}

class EmailFormFooterText extends StatelessWidget {
  const EmailFormFooterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Check my ',
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: AppColors.primary2),
        children: <TextSpan>[
          TextSpan(
            text: 'newsletter page',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.white, decoration: TextDecoration.underline),
          ),
          TextSpan(
            text: ' to learn what\'s inside.',
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: AppColors.primary2),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}

class FooterEmailTextField extends StatelessWidget {
  const FooterEmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 48,
      child: EmailTextField(
        fillColor: AppColors.primary6,
        hintColor: AppColors.primary2,
      ),
    );
  }
}

class FooterEmailSignupButton extends StatelessWidget {
  const FooterEmailSignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 48,
      child: EmailSignupButton(
        primary: Colors.white,
        onPrimary: AppColors.primary7,
      ),
    );
  }
}
