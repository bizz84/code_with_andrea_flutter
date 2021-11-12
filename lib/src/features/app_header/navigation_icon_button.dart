import 'package:flutter/material.dart';

class NavigationIconButton extends StatelessWidget {
  const NavigationIconButton({Key? key, required this.assetName})
      : super(key: key);
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        child: Image.asset(assetName),
        onTap: () {},
      ),
    );
  }
}
