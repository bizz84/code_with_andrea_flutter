import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/constants/constants.dart';
import 'package:code_with_andrea_flutter/src/features/intro/email_signup.dart';
import 'package:code_with_andrea_flutter/src/features/intro/intro_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Stack(
        children: [
          Column(
            children: const [
              IntroHeader(),
              EmailSignup(),
            ],
          ),
          if (screenWidth > Breakpoints.desktop) ...[
            Positioned(
              top: 250,
              left: 0,
              child: SvgPicture.asset(Constants.iconFirebase),
            ),
            Positioned(
              top: 350,
              right: 0,
              child: SvgPicture.asset(Constants.iconDart),
            ),
            Positioned(
              top: 800,
              right: 100,
              child: SvgPicture.asset(Constants.iconFlutter),
            ),
          ],
        ],
      ),
    );
  }
}
