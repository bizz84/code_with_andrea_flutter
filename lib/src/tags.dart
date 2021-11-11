import 'package:flutter/material.dart';

extension StringTag on String {
  int simpleHash() {
    var result = 0;
    for (final unit in codeUnits) {
      result += unit;
    }
    return result;
  }

  TagColor color() => TagColor.allColors[simpleHash() % 6];
}

class TagColor {
  const TagColor(this.backgroundColor, this.color);
  final Color backgroundColor;
  final Color color;

  static const List<TagColor> allColors = [
    TagColor(Color(0xFFE3BE1B), Color(0xFF040D36)),
    TagColor(Color(0xFF204F96), Color(0xFFFFFFFF)),
    TagColor(Color(0xFF48731C), Color(0xFFFFFFFF)),
    TagColor(Color(0xFF582391), Color(0xFFFFFFFF)),
    TagColor(Color(0xFFAD5E03), Color(0xFFFFFFFF)),
    TagColor(Color(0xFFB3122F), Color(0xFFFFFFFF))
  ];
}
