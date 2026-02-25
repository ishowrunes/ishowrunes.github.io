import 'package:ishowrunes/resources/dimensions/window_size.dart';

class Dimension {
  const Dimension({
    required this.tiny,
    required this.tiny2,
    required this.small,
    required this.small2,
    required this.small3,
    required this.small4,
    required this.small5,
    required this.medium,
    required this.medium2,
    required this.medium3,
    required this.medium4,
    required this.medium5,
    required this.large,
    required this.large2,
    required this.large3,
    required this.large4,
    required this.large5,
    required this.borderRadius,
    required this.buttonMinWidth,
    required this.buttonHeight,
    required this.navBarHeight,
    required this.maxWidth,
  });

  /// Compact `2.0` <br> Medium `2.16`
  /// <br> Expanded `2.33` <br> Large `2.52`
  /// <br> ExtraLarge `2.72`
  final double tiny;

  /// Compact `4.0` <br> Medium `4.32`
  /// <br> Expanded `4.66` <br> Large `5.04`
  /// <br> ExtraLarge `5.44`
  final double tiny2;

  /// Compact `8.0` <br> Medium `8.64`
  /// <br> Expanded `9.33` <br> Large `10.08`
  /// <br> ExtraLarge `10.88`
  final double small;

  /// Compact `12.0` <br> Medium `12.96`
  /// <br> Expanded `13.99` <br> Large `15.12`
  /// <br> ExtraLarge `16.32`
  final double small2;

  /// Compact `16.0` <br> Medium `17.28`
  /// <br> Expanded `18.66` <br> Large `20.16`
  /// <br> ExtraLarge `21.76`
  final double small3;

  /// Compact `20.0` <br> Medium `21.6`
  /// <br> Expanded `23.32` <br> Large `25.2`
  /// <br> ExtraLarge `27.2`
  final double small4;

  /// Compact `24.0` <br> Medium `25.92`
  /// <br> Expanded `27.98` <br> Large `30.24`
  /// <br> ExtraLarge `32.64`
  final double small5;

  /// Compact `32.0` <br> Medium `34.56`
  /// <br> Expanded `37.33` <br> Large `40.32`
  /// <br> ExtraLarge `43.52`
  final double medium;

  /// Compact `36.0` <br> Medium `38.88`
  /// <br> Expanded `41.99` <br> Large `45.12`
  /// <br> ExtraLarge `48.64`
  final double medium2;

  /// Compact `40.0` <br> Medium `43.2`
  /// <br> Expanded `46.66` <br> Large `50.4`
  /// <br> ExtraLarge `54.4`
  final double medium3;

  /// Compact `44.0` <br> Medium `47.52`
  /// <br> Expanded `51.32` <br> Large `55.44`
  /// <br> ExtraLarge `59.84`
  final double medium4;

  /// Compact `48.0` <br> Medium `51.84`
  /// <br> Expanded `55.98` <br> Large `60.48`
  /// <br> ExtraLarge `65.28`
  final double medium5;

  /// Compact `56.0` <br> Medium `60.48`
  /// <br> Expanded `65.31` <br> Large `70.56`
  /// <br> ExtraLarge `76.16`
  final double large;

  /// Compact `60.0` <br> Medium `64.8`
  /// <br> Expanded `69.66` <br> Large `75.12`
  /// <br> ExtraLarge `81.28`
  final double large2;

  /// Compact `64.0` <br> Medium `69.12`
  /// <br> Expanded `74.64` <br> Large `80.64`
  /// <br> ExtraLarge `87.04`
  final double large3;

  /// Compact `68.0` <br> Medium `73.44`
  /// <br> Expanded `79.62` <br> Large `86.16`
  /// <br> ExtraLarge `92.8`
  final double large4;

  /// Compact `72.0` <br> Medium `77.76`
  /// <br> Expanded `84.59` <br> Large `91.68`
  /// <br> ExtraLarge `98.56`
  final double large5;

  /// Compact `10.0` <br> Medium `10.8`
  /// <br> Expanded `11.16` <br> Large `12.0`
  /// <br> ExtraLarge `12.8`
  final double borderRadius;

  /// Compact `200.0` <br> Medium `216.0`
  /// <br> Expanded `223.2` <br> Large `240.0`
  /// <br> ExtraLarge `256.0`
  final double buttonMinWidth;

  /// Compact `48.0` <br> Medium `51.84`
  /// <br> Expanded `53.28` <br> Large `57.6`
  /// <br> ExtraLarge `61.44`
  final double buttonHeight;

  /// Compact `58.0` <br> Medium `62.64`
  /// <br> Expanded `64.64` <br> Large `69.12`
  /// <br> ExtraLarge `73.12`
  final double navBarHeight;

  /// Compact `1280.0` <br> Medium `1280.00`
  /// <br> Expanded `1280.00` <br> Large `1280.00`
  /// <br> ExtraLarge `1280.00`
  final double maxWidth;
}

class AppDimension {
  const AppDimension({
    required this.windowSize,
    required this.maxWidth,
  });

  final WindowSize windowSize;

  final double maxWidth;

  Dimension get dimens {
    return switch (windowSize) {
      .compact => _compact,
      .medium => _medium,
      .expanded => _expanded,
      .large => _large,
      .extraLarge => _extraLarge,
    };
  }

  Dimension get baseDimens => _compact;
}

// Multiplier => 1x
Dimension get _compact => const Dimension(
  tiny: 2,
  tiny2: 4,
  small: 8,
  small2: 12,
  small3: 16,
  small4: 20,
  small5: 24,
  medium: 32,
  medium2: 36,
  medium3: 40,
  medium4: 44,
  medium5: 48,
  large: 56,
  large2: 60,
  large3: 64,
  large4: 68,
  large5: 72,
  borderRadius: 10,
  buttonMinWidth: 200,
  buttonHeight: 48,
  navBarHeight: 58,
  maxWidth: 1280,
);

// Multiplier => 1.08x
Dimension get _medium => const Dimension(
  tiny: 2.16,
  tiny2: 4.32,
  small: 8.64,
  small2: 12.96,
  small3: 17.28,
  small4: 21.6,
  small5: 25.92,
  medium: 34.56,
  medium2: 38.88,
  medium3: 43.2,
  medium4: 47.52,
  medium5: 51.84,
  large: 60.48,
  large2: 64.8,
  large3: 69.12,
  large4: 73.44,
  large5: 77.76,
  borderRadius: 10.8,
  buttonMinWidth: 216.0,
  buttonHeight: 51.84,
  navBarHeight: 62.64,
  maxWidth: 1280,
);

// Multiplier => 1.16x
Dimension get _expanded => const Dimension(
  tiny: 2.33,
  tiny2: 4.66,
  small: 9.28,
  small2: 13.99,
  small3: 18.66,
  small4: 23.32,
  small5: 27.98,
  medium: 37.33,
  medium2: 41.99,
  medium3: 46.66,
  medium4: 51.32,
  medium5: 55.98,
  large: 65.31,
  large2: 69.66,
  large3: 74.64,
  large4: 79.62,
  large5: 84.59,
  borderRadius: 11.16,
  buttonMinWidth: 223.2,
  buttonHeight: 53.28,
  navBarHeight: 64.64,
  maxWidth: 1280,
);

// Multiplier => 1.24x
Dimension get _large => const Dimension(
  tiny: 2.52,
  tiny2: 5.04,
  small: 10.08,
  small2: 15.12,
  small3: 20.16,
  small4: 25.2,
  small5: 30.24,
  medium: 40.32,
  medium2: 45.12,
  medium3: 50.4,
  medium4: 55.44,
  medium5: 60.48,
  large: 70.56,
  large2: 75.12,
  large3: 80.64,
  large4: 86.16,
  large5: 91.68,
  borderRadius: 12.0,
  buttonMinWidth: 240.0,
  buttonHeight: 57.6,
  navBarHeight: 69.12,
  maxWidth: 1280,
);

// Multiplier => 1.32x
Dimension get _extraLarge => const Dimension(
  tiny: 2.72,
  tiny2: 5.44,
  small: 10.88,
  small2: 16.32,
  small3: 21.76,
  small4: 27.2,
  small5: 32.64,
  medium: 43.52,
  medium2: 48.64,
  medium3: 54.4,
  medium4: 59.84,
  medium5: 65.28,
  large: 76.16,
  large2: 81.28,
  large3: 87.04,
  large4: 92.8,
  large5: 98.56,
  borderRadius: 12.8,
  buttonMinWidth: 256.0,
  buttonHeight: 61.44,
  navBarHeight: 73.12,
  maxWidth: 1280,
);
