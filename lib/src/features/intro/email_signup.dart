import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/features/common_widgets/email_signup_button.dart';
import 'package:code_with_andrea_flutter/src/features/common_widgets/email_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailSignup extends StatelessWidget {
  const EmailSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isWide = screenWidth > Breakpoints.tablet;
    final width = isWide ? 522.0 : 337.0;
    return Center(
      child: SizedBox(
        width: width,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontalPadding(screenWidth)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: isWide ? 88 : 56),
              Text(
                'The best Flutter tutorials. Right in your inbox.',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  text:
                      'Join over 20,000 developers who are taking their Flutter skills to the next level with my free ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: AppColors.neutral3),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Flutter email course & newsletter:',
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          color: AppColors.neutral2,
                          decoration: TextDecoration.underline,
                        )),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              const EmailSignupForm(),
              const SizedBox(height: 16),
              Text(
                '"Thank you for this great course (and all the great videos). The best part is simply how you have it organized, and the superior job in picking out resources."',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontWeight: FontWeight.normal, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                'Andy Drexler',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontWeight: FontWeight.normal, color: AppColors.neutral4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailSignupForm extends StatelessWidget {
  const EmailSignupForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isWide = screenWidth > Breakpoints.tablet;
    if (isWide) {
      return SizedBox(
        height: 48,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Expanded(
              flex: 2,
              child: IntroEmailTextField(),
            ),
            SizedBox(width: 16),
            Expanded(
              child: IntroEmailSignupButton(),
            )
          ],
        ),
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(height: 48, child: IntroEmailTextField()),
          SizedBox(height: 16),
          SizedBox(
            height: 48,
            child: IntroEmailSignupButton(),
          ),
        ],
      );
    }
  }
}

class IntroEmailTextField extends StatelessWidget {
  const IntroEmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const EmailTextField(
      fillColor: AppColors.neutral5,
      hintColor: AppColors.neutral2,
    );
  }
}

class IntroEmailSignupButton extends StatelessWidget {
  const IntroEmailSignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const EmailSignupButton(
      primary: AppColors.primary5,
      onPrimary: Colors.white,
    );
  }
}
