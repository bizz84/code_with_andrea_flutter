import 'package:flutter/material.dart';

class SectionSeparator extends StatelessWidget {
  const SectionSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 56),
        VerticalSeparator(),
        SizedBox(height: 56),
      ],
    );
  }
}

class VerticalSeparator extends StatelessWidget {
  const VerticalSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 2,
      color: const Color(0xFF252627),
    );
  }
}
