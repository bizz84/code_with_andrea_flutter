import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/constants/constants.dart';
import 'package:code_with_andrea_flutter/src/features/intro/email_signup.dart';
import 'package:code_with_andrea_flutter/src/features/intro/intro_header.dart';
import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Stack(
        children: [
          const Column(
            children: [
              IntroHeader(),
              EmailSignup(),
            ],
          ),
          if (screenWidth > Breakpoints.desktop) ...[
            const Positioned(
              top: 250,
              left: 0,
              child: VectorGraphic(
                  loader: AssetBytesLoader(Constants.iconFirebase)),
            ),
            const Positioned(
              top: 350,
              right: 0,
              child:
                  VectorGraphic(loader: AssetBytesLoader(Constants.iconDart)),
            ),
            const Positioned(
              top: 800,
              right: 100,
              child: VectorGraphic(
                  loader: AssetBytesLoader(Constants.iconFlutter)),
            ),
          ],
        ],
      ),
    );
  }
}
