/// The `final class CustomMemCache` is defining a class named `CustomMemCache`. The `final` keyword
/// indicates that this class cannot be subclassed or extended.
final class CustomMemCache {
  /// [height] and [width] are optional named parameters. The `this` keyword is used to refer to the
  const CustomMemCache({
    this.memCacheHeight = 100,
    this.memCacheWidth = 100,
  });

  /// [height] and [width] are optional named parameters. The `this` keyword is used to refer to the
  final int memCacheHeight;
  final int memCacheWidth;
}
