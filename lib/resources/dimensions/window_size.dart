/// Categorize screen size according to Material 3 guidelines
enum WindowSize {
  /// Phone in portrait
  compact(1),

  /// Tablet in portrait
  /// Foldable in portrait (Unfolded)
  medium(1.25),

  /// Phone in landscape
  /// Tablet in landscape
  /// Foldable in landscape
  expanded(1.5),

  /// Desktop
  large(1.75),

  /// Ultra-wide desktop
  extraLarge(2);

  const WindowSize(this.multiplier);

  final double multiplier;
}

WindowSize resolveSize(double width) {
  if (width >= 1600) return .extraLarge;
  if (width >= 1200) return .large;
  if (width >= 900) return .expanded;
  if (width >= 600) return .medium;
  return .compact;
}
