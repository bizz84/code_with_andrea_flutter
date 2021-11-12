import 'dart:math';

import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/features/common_widgets/email_signup_button.dart';
import 'package:code_with_andrea_flutter/src/features/common_widgets/email_text_field.dart';
import 'package:flutter/material.dart';

class EmailFooterSection extends StatelessWidget {
  const EmailFooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final padding = max((screenWidth - 556.0) / 2.0, 0.0);
    return Container(
      color: AppColors.primary,
      child: Center(
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
            // FTW scrolling bug if I add any of these!!
            //const SizedBox(height: 24),
            //const EmailFooterSectionBody(),
            const SizedBox(height: 80),
          ],
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
          //SizedBox(height: 16),
          FooterEmailSignupButton(),
        ],
      ),
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
