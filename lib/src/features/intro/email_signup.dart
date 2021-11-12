import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
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
              child: EmailTextField(),
            ),
            SizedBox(width: 16),
            Expanded(
              child: EmailSignupButton(),
            )
          ],
        ),
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(height: 48, child: EmailTextField()),
          SizedBox(height: 16),
          SizedBox(height: 48, child: EmailSignupButton()),
        ],
      );
    }
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      style:
          Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Email Address',
        hintStyle: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: AppColors.neutral2),
        filled: true,
        fillColor: AppColors.neutral5,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: AppColors.neutral4, width: 1),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: AppColors.neutral4, width: 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
      ),
    );
  }
}

class EmailSignupButton extends StatelessWidget {
  const EmailSignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: AppColors.primary5,
          onPrimary: Colors.white,
          splashFactory: NoSplash.splashFactory,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      child: Text(
        'Get the course',
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      onPressed: () {},
    );
  }
}
