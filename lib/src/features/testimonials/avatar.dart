import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.assetName, required this.size})
      : super(key: key);
  final String assetName;
  final double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage(assetName),
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
