// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:common/src/packages/custom_image/custom_mem_cache.dart';

/// A custom network image widget.
final class CustomNetworkImage extends StatelessWidget {
  /// The line `const CustomNetworkImage({super.key});` is defining a constructor for the
  /// `CustomNetworkImage` class.
  const CustomNetworkImage({
    this.memCache = const CustomMemCache(),
    super.key,
    this.imageUrl,
    this.emptyWidget,
    this.boxFit = BoxFit.cover,
    this.loadingWidget,
    this.size,
  });

  /// The image url.
  final String? imageUrl;

  /// The line `final Widget? emptyWidget;` is declaring a nullable variable named `emptyWidget` of type
  /// `Widget`. This means that the variable can either hold a reference to a `Widget` object or be
  /// `null`.
  final Widget? emptyWidget;

  /// The line `final CustomMemCache memCache;` is declaring a final variable named `memCache` of type
  /// `CustomMemCache`. This variable is used to store an instance of the `CustomMemCache` class, which
  /// is used for caching network images.
  final CustomMemCache memCache;

  /// The line `final BoxFit? boxFit;` is declaring a nullable variable named `boxFit` of type `BoxFit`.
  final BoxFit? boxFit;

  final Widget? loadingWidget;

  final Size? size;

  @override
  Widget build(BuildContext context) {
    final url = imageUrl ?? '';
    if (imageUrl == null || url.isEmpty) return emptyWidget ?? const Icon(Icons.error_outline);

    return CachedNetworkImage(
      imageUrl: url,
      memCacheHeight: memCache.memCacheHeight,
      memCacheWidth: memCache.memCacheWidth,
      fit: boxFit,
      width: size?.width,
      height: size?.height,
      progressIndicatorBuilder: (context, url, progress) => loadingWidget ?? const CircularProgressIndicator(),
      errorWidget: (context, url, error) => emptyWidget ?? const Icon(Icons.error_outline),
      errorListener: (value) {
        if (kDebugMode) debugPrint('Error loading image: $value');
      },
    );
  }
}
