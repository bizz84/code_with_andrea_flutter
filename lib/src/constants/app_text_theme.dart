import 'package:flutter/material.dart';

abstract class AppTextTheme {
  TextStyle get h1;
  TextStyle get h2;
  TextStyle get h3;
  TextStyle get h4;
  TextStyle get h5;
  TextStyle get h6;

  TextStyle get subtitle1;
  TextStyle get subtitle2;

  TextStyle get paragraph20;
  TextStyle get paragraph18;

  TextStyle get body;

  TextStyle get subhead;
  TextStyle get subheadAllCaps;

  TextStyle get button;

  TextStyle get footnote;
  TextStyle get footnoteAllCaps;
}

class DesktopTextTheme implements AppTextTheme {
  // TODO: heights
  @override
  final h1 = const TextStyle(
      fontFamily: 'Lato', fontSize: 81, fontWeight: FontWeight.w900);
  @override
  final h2 = const TextStyle(
      fontFamily: 'Lato', fontSize: 72, fontWeight: FontWeight.w900);
  @override
  final h3 = const TextStyle(
      fontFamily: 'Lato', fontSize: 54, fontWeight: FontWeight.w900);
  @override
  final h4 = const TextStyle(
      fontFamily: 'Lato', fontSize: 30, fontWeight: FontWeight.bold);
  @override
  final h5 = const TextStyle(
      fontFamily: 'Lato', fontSize: 24, fontWeight: FontWeight.bold);
  @override
  final h6 = const TextStyle(
      fontFamily: 'Lato', fontSize: 18, fontWeight: FontWeight.w900);

  @override
  final subtitle1 = const TextStyle(
      fontFamily: 'Lato', fontSize: 16, fontWeight: FontWeight.bold);
  @override
  final subtitle2 = const TextStyle(
      fontFamily: 'Lato', fontSize: 14, fontWeight: FontWeight.bold);

  @override
  final paragraph20 = const TextStyle(
      fontFamily: 'Lato', fontSize: 20, fontWeight: FontWeight.normal);
  @override
  final paragraph18 = const TextStyle(
      fontFamily: 'Lato', fontSize: 18, fontWeight: FontWeight.normal);

  @override
  final body = const TextStyle(
      fontFamily: 'Lato', fontSize: 16, fontWeight: FontWeight.normal);

  @override
  final subhead = const TextStyle(
      fontFamily: 'Lato', fontSize: 14, fontWeight: FontWeight.normal);
  @override
  final subheadAllCaps = const TextStyle(
      fontFamily: 'Lato',
      fontSize: 12,
      fontWeight: FontWeight.normal,
      letterSpacing: 2.5);

  @override
  final button = const TextStyle(
      fontFamily: 'Lato', fontSize: 14, fontWeight: FontWeight.bold);

  @override
  final footnote = const TextStyle(
      fontFamily: 'Lato', fontSize: 12, fontWeight: FontWeight.normal);
  @override
  final footnoteAllCaps = const TextStyle(
      fontFamily: 'Lato',
      fontSize: 12,
      fontWeight: FontWeight.normal,
      letterSpacing: 2.5);
}

class MobileTextTheme implements AppTextTheme {
  // TODO: heights
  @override
  final h1 = const TextStyle(
      fontFamily: 'Lato', fontSize: 54, fontWeight: FontWeight.w900);
  @override
  final h2 = const TextStyle(
      fontFamily: 'Lato', fontSize: 40, fontWeight: FontWeight.w900);
  @override
  final h3 = const TextStyle(
      fontFamily: 'Lato', fontSize: 36, fontWeight: FontWeight.w900);
  @override
  final h4 = const TextStyle(
      fontFamily: 'Lato', fontSize: 27, fontWeight: FontWeight.bold);
  @override
  final h5 = const TextStyle(
      fontFamily: 'Lato', fontSize: 24, fontWeight: FontWeight.bold);
  @override
  final h6 = const TextStyle(
      fontFamily: 'Lato', fontSize: 18, fontWeight: FontWeight.w900);

  @override
  final subtitle1 = const TextStyle(
      fontFamily: 'Lato', fontSize: 16, fontWeight: FontWeight.bold);
  @override
  final subtitle2 = const TextStyle(
      fontFamily: 'Lato', fontSize: 14, fontWeight: FontWeight.bold);

  @override
  final paragraph20 = const TextStyle(
      fontFamily: 'Lato', fontSize: 20, fontWeight: FontWeight.normal);
  @override
  final paragraph18 = const TextStyle(
      fontFamily: 'Lato', fontSize: 18, fontWeight: FontWeight.normal);

  @override
  final body = const TextStyle(
      fontFamily: 'Lato', fontSize: 16, fontWeight: FontWeight.normal);

  @override
  final subhead = const TextStyle(
      fontFamily: 'Lato', fontSize: 14, fontWeight: FontWeight.normal);
  @override
  final subheadAllCaps = const TextStyle(
      fontFamily: 'Lato',
      fontSize: 14,
      fontWeight: FontWeight.normal,
      letterSpacing: 2.5);

  @override
  final button = const TextStyle(
      fontFamily: 'Lato', fontSize: 14, fontWeight: FontWeight.bold);

  @override
  final footnote = const TextStyle(
      fontFamily: 'Lato', fontSize: 12, fontWeight: FontWeight.normal);
  @override
  final footnoteAllCaps = const TextStyle(
      fontFamily: 'Lato',
      fontSize: 12,
      fontWeight: FontWeight.normal,
      letterSpacing: 2.5);
}
