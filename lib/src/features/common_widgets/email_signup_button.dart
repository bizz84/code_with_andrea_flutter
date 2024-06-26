import 'package:flutter/material.dart';

class EmailSignupButton extends StatelessWidget {
  const EmailSignupButton({
    super.key,
    required this.primary,
    required this.onPrimary,
  });
  final Color primary;
  final Color onPrimary;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: onPrimary,
        backgroundColor: primary,
        splashFactory: NoSplash.splashFactory,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Text(
        'Get the course',
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontWeight: FontWeight.bold, color: onPrimary),
      ),
      onPressed: () {},
    );
  }
}
