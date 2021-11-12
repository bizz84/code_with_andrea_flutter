import 'package:flutter/material.dart';

class EmailSignupButton extends StatelessWidget {
  const EmailSignupButton(
      {Key? key, required this.primary, required this.onPrimary})
      : super(key: key);
  final Color primary;
  final Color onPrimary;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: primary,
          onPrimary: onPrimary,
          splashFactory: NoSplash.splashFactory,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      child: Text(
        'Get the course',
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(fontWeight: FontWeight.bold, color: onPrimary),
      ),
      onPressed: () {},
    );
  }
}
