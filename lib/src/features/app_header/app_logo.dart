import 'package:code_with_andrea_flutter/src/constants/constants.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Constants.appLogo);
  }
}
