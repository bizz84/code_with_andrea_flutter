/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Lato-Black.ttf
  String get latoBlack => 'assets/fonts/Lato-Black.ttf';

  /// File path: assets/fonts/Lato-Bold.ttf
  String get latoBold => 'assets/fonts/Lato-Bold.ttf';

  /// File path: assets/fonts/Lato-Italic.ttf
  String get latoItalic => 'assets/fonts/Lato-Italic.ttf';

  /// File path: assets/fonts/Lato-Regular.ttf
  String get latoRegular => 'assets/fonts/Lato-Regular.ttf';

  /// List of all assets
  List<String> get values => [latoBlack, latoBold, latoItalic, latoRegular];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/icon-dart.svg
  String get iconDart => 'assets/svg/icon-dart.svg';

  /// File path: assets/svg/icon-firebase.svg
  String get iconFirebase => 'assets/svg/icon-firebase.svg';

  /// File path: assets/svg/icon-flutter.svg
  String get iconFlutter => 'assets/svg/icon-flutter.svg';

  /// File path: assets/svg/icon-star.svg
  String get iconStar => 'assets/svg/icon-star.svg';

  /// List of all assets
  List<String> get values => [iconDart, iconFirebase, iconFlutter, iconStar];
}

class Assets {
  Assets._();

  static const AssetGenImage andreaAvatar =
      AssetGenImage('assets/andrea-avatar.webp');
  static const AssetGenImage appLogo = AssetGenImage('assets/app-logo.png');
  static const AssetGenImage dartCourseBannerSmall =
      AssetGenImage('assets/dart-course-banner-small.webp');
  static const AssetGenImage flutterAnimationsCourseBannerSmall =
      AssetGenImage('assets/flutter-animations-course-banner-small.webp');
  static const AssetGenImage flutterFirebaseCourseBannerSmall =
      AssetGenImage('assets/flutter-firebase-course-banner-small.webp');
  static const AssetGenImage flutterRestApiCourseBannerSmall =
      AssetGenImage('assets/flutter-rest-api-course-banner-small.webp');
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const AssetGenImage hamburgerMenu =
      AssetGenImage('assets/hamburger-menu.png');
  static const AssetGenImage howToParseJson =
      AssetGenImage('assets/how-to-parse-json.webp');
  static const AssetGenImage learnFlutterAnimations =
      AssetGenImage('assets/learn-flutter-animations.webp');
  static const AssetGenImage nipunaCooray =
      AssetGenImage('assets/nipuna-cooray.jpg');
  static const AssetGenImage nivenShah = AssetGenImage('assets/niven-shah.jpg');
  static const AssetGenImage parkerStevens =
      AssetGenImage('assets/parker-stevens.jpg');
  static const AssetGenImage search = AssetGenImage('assets/search.png');
  static const AssetGenImage sideEffects =
      AssetGenImage('assets/side-effects.webp');
  static const AssetGenImage splitView =
      AssetGenImage('assets/split-view.webp');
  static const $AssetsSvgGen svg = $AssetsSvgGen();
  static const AssetGenImage tadasPetra =
      AssetGenImage('assets/tadas-petra.jpg');
  static const AssetGenImage toggleDay = AssetGenImage('assets/toggle-day.png');

  /// List of all assets
  static List<AssetGenImage> get values => [
        andreaAvatar,
        appLogo,
        dartCourseBannerSmall,
        flutterAnimationsCourseBannerSmall,
        flutterFirebaseCourseBannerSmall,
        flutterRestApiCourseBannerSmall,
        hamburgerMenu,
        howToParseJson,
        learnFlutterAnimations,
        nipunaCooray,
        nivenShah,
        parkerStevens,
        search,
        sideEffects,
        splitView,
        tadasPetra,
        toggleDay
      ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
