import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  static final latoTextStyle = GoogleFonts.lato();
}

class DesktopTextTheme implements AppTextTheme {
  // TODO: heights
  @override
  final h1 = GoogleFonts.lato(fontSize: 81, fontWeight: FontWeight.w900);
  @override
  final h2 = GoogleFonts.lato(fontSize: 72, fontWeight: FontWeight.w900);
  @override
  final h3 = GoogleFonts.lato(fontSize: 54, fontWeight: FontWeight.w900);
  @override
  final h4 = GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  final h5 = GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold);
  @override
  final h6 = GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w900);

  @override
  final subtitle1 = GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold);
  @override
  final subtitle2 = GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.bold);

  @override
  final paragraph20 =
      GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.normal);
  @override
  final paragraph18 =
      GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.normal);

  @override
  final body = GoogleFonts.lato(
      fontSize: 16, fontWeight: FontWeight.normal, height: 1.5);

  @override
  final subhead = GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.normal);
  @override
  final subheadAllCaps = GoogleFonts.lato(
      fontSize: 12, fontWeight: FontWeight.normal, letterSpacing: 2.5);

  @override
  final button = GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.bold);

  @override
  final footnote =
      GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.normal);
  @override
  final footnoteAllCaps = GoogleFonts.lato(
      fontSize: 12, fontWeight: FontWeight.normal, letterSpacing: 2.5);
}

class MobileTextTheme implements AppTextTheme {
  // TODO: heights
  @override
  final h1 = GoogleFonts.lato(fontSize: 54, fontWeight: FontWeight.w900);
  @override
  final h2 = GoogleFonts.lato(fontSize: 40, fontWeight: FontWeight.w900);
  @override
  final h3 = GoogleFonts.lato(fontSize: 36, fontWeight: FontWeight.w900);
  @override
  final h4 = GoogleFonts.lato(fontSize: 27, fontWeight: FontWeight.bold);
  @override
  final h5 = GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold);
  @override
  final h6 = GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w900);

  @override
  final subtitle1 = GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold);
  @override
  final subtitle2 = GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.bold);

  @override
  final paragraph20 =
      GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.normal);
  @override
  final paragraph18 =
      GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.normal);

  @override
  final body = GoogleFonts.lato(
      fontSize: 16, fontWeight: FontWeight.normal, height: 1.5);

  @override
  final subhead = GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.normal);
  @override
  final subheadAllCaps = GoogleFonts.lato(
      fontSize: 14, fontWeight: FontWeight.normal, letterSpacing: 2.5);

  @override
  final button = GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.bold);

  @override
  final footnote =
      GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.normal);
  @override
  final footnoteAllCaps = GoogleFonts.lato(
      fontSize: 12, fontWeight: FontWeight.normal, letterSpacing: 2.5);
}
