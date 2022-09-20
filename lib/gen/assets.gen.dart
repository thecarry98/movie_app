/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo.jpg
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.jpg');
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/Arrow.svg
  SvgGenImage get arrow => const SvgGenImage('assets/svg/Arrow.svg');

  /// File path: assets/svg/Frame.svg
  SvgGenImage get frame => const SvgGenImage('assets/svg/Frame.svg');

  /// File path: assets/svg/Group9.9.svg
  SvgGenImage get group99 => const SvgGenImage('assets/svg/Group9.9.svg');

  /// File path: assets/svg/Polygon.svg
  SvgGenImage get polygon => const SvgGenImage('assets/svg/Polygon.svg');

  /// File path: assets/svg/alarm.svg
  SvgGenImage get alarm => const SvgGenImage('assets/svg/alarm.svg');

  /// File path: assets/svg/event-ticket.svg
  SvgGenImage get eventTicket =>
      const SvgGenImage('assets/svg/event-ticket.svg');

  /// File path: assets/svg/icons8-close.svg
  SvgGenImage get icons8Close =>
      const SvgGenImage('assets/svg/icons8-close.svg');

  /// File path: assets/svg/lock.svg
  SvgGenImage get lock => const SvgGenImage('assets/svg/lock.svg');

  /// File path: assets/svg/logo-fb-simple.svg
  SvgGenImage get logoFbSimple =>
      const SvgGenImage('assets/svg/logo-fb-simple.svg');

  /// File path: assets/svg/logo-google-plus.svg
  SvgGenImage get logoGooglePlus =>
      const SvgGenImage('assets/svg/logo-google-plus.svg');

  /// File path: assets/svg/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/svg/logo.svg');

  /// File path: assets/svg/movie-reel.svg
  SvgGenImage get movieReel => const SvgGenImage('assets/svg/movie-reel.svg');

  /// File path: assets/svg/single-03.svg
  SvgGenImage get single03 => const SvgGenImage('assets/svg/single-03.svg');

  /// File path: assets/svg/single-04.svg
  SvgGenImage get single04 => const SvgGenImage('assets/svg/single-04.svg');

  /// File path: assets/svg/twitter.svg
  SvgGenImage get twitter => const SvgGenImage('assets/svg/twitter.svg');

  /// File path: assets/svg/zoom.svg
  SvgGenImage get zoom => const SvgGenImage('assets/svg/zoom.svg');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
