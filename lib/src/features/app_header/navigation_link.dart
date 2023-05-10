import 'package:flutter/material.dart';

class NavigationLink extends StatelessWidget {
  const NavigationLink({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: TextButton(
          child: Text(text,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.white)),
          onPressed: () {},
        ),
      ),
    );
  }
}
