/// Categorize screen size according to Material 3 guidelines
enum WindowSize {
  /// Phone in portrait
  compact(1, 0),

  /// Tablet in portrait
  /// Foldable in portrait (Unfolded)
  medium(1.04, 1),

  /// Phone in landscape
  /// Tablet in landscape
  /// Foldable in landscape
  expanded(1.08, 2),

  /// Desktop
  large(1.12, 3),

  /// Ultra-wide desktop
  extraLarge(1.16, 4);

  const WindowSize(this.multiplier, this.order);

  final double multiplier;
  final int order;
}

WindowSize resolveSize(double width) {
  if (width >= 1600) return .extraLarge;
  if (width >= 1200) return .large;
  if (width >= 900) return .expanded;
  if (width >= 600) return .medium;
  return .compact;
}
