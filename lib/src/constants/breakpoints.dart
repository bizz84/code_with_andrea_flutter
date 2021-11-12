class Breakpoints {
  static const desktop = 1060;
  static const tablet = 834;
  static const mobile = 375;

  static const twoColLayoutMinWidth = 640;
}

double horizontalPadding(double screenWidth) {
  if (screenWidth > Breakpoints.desktop) {
    return 0;
  } else if (screenWidth > Breakpoints.mobile) {
    return 28;
  } else {
    return 20;
  }
}

double sliverHorizontalPadding(double screenWidth) {
  if (screenWidth > Breakpoints.desktop) {
    return (screenWidth - Breakpoints.desktop) / 2;
  } else if (screenWidth > Breakpoints.mobile) {
    return 28;
  } else {
    return 20;
  }
}
