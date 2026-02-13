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
    required this.appBarHeight,
  });

  /// Compact `2` <br> Medium `3`
  /// <br> Expanded `3` <br> Large `4`
  /// <br> ExtraLarge `4`
  final double tiny;

  /// Compact `4` <br> Medium `5`
  /// <br> Expanded `6` <br> Large `7`
  /// <br> ExtraLarge `8`
  final double tiny2;

  /// Compact `8` <br> Medium `10`
  /// <br> Expanded `12` <br> Large `14`
  /// <br> ExtraLarge `16`
  final double small;

  /// Compact `12` <br> Medium `15`
  /// <br> Expanded `18` <br> Large `21`
  /// <br> ExtraLarge `24`
  final double small2;

  /// Compact `16` <br> Medium `20`
  /// <br> Expanded `24` <br> Large `28`
  /// <br> ExtraLarge `32`
  final double small3;

  /// Compact `20` <br> Medium `25`
  /// <br> Expanded `30` <br> Large `35`
  /// <br> ExtraLarge `40`
  final double small4;

  /// Compact `24` <br> Medium `30`
  /// <br> Expanded `36` <br> Large `42`
  /// <br> ExtraLarge `48`
  final double small5;

  /// Compact `32` <br> Medium `40`
  /// <br> Expanded `48` <br> Large `56`
  /// <br> ExtraLarge `64`
  final double medium;

  /// Compact `36` <br> Medium `45`
  /// <br> Expanded `54` <br> Large `63`
  /// <br> ExtraLarge `72`
  final double medium2;

  /// Compact `40` <br> Medium `50`
  /// <br> Expanded `60` <br> Large `70`
  /// <br> ExtraLarge `80`
  final double medium3;

  /// Compact `44` <br> Medium `55`
  /// <br> Expanded `66` <br> Large `77`
  /// <br> ExtraLarge `88`
  final double medium4;

  /// Compact `48` <br> Medium `60`
  /// <br> Expanded `72` <br> Large `84`
  /// <br> ExtraLarge `96`
  final double medium5;

  /// Compact `56` <br> Medium `70`
  /// <br> Expanded `84` <br> Large `98`
  /// <br> ExtraLarge `112`
  final double large;

  /// Compact `60` <br> Medium `75`
  /// <br> Expanded `90` <br> Large `105`
  /// <br> ExtraLarge `120`
  final double large2;

  /// Compact `64` <br> Medium `80`
  /// <br> Expanded `96` <br> Large `112`
  /// <br> ExtraLarge `128`
  final double large3;

  /// Compact `68` <br> Medium `85`
  /// <br> Expanded `102` <br> Large `119`
  /// <br> ExtraLarge `136`
  final double large4;

  /// Compact `72` <br> Medium `90`
  /// <br> Expanded `108` <br> Large `126`
  /// <br> ExtraLarge `144`
  final double large5;

  /// Compact `10` <br> Medium `13`
  /// <br> Expanded `15` <br> Large `18`
  /// <br> ExtraLarge `20`
  final double borderRadius;

  /// Compact `200` <br> Medium `250`
  /// <br> Expanded `300` <br> Large `350`
  /// <br> ExtraLarge `400`
  final double buttonMinWidth;

  /// Compact `48` <br> Medium `60`
  /// <br> Expanded `72` <br> Large `84`
  /// <br> ExtraLarge `96`
  final double buttonHeight;

  /// Compact `56` <br> Medium `70`
  /// <br> Expanded `84` <br> Large `98`
  /// <br> ExtraLarge `112`
  final double appBarHeight;
}

class AppDimension {
  const AppDimension({required this.windowSize});

  final WindowSize windowSize;

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
  appBarHeight: 56,
);

// Multiplier => 1.25x
Dimension get _medium => const Dimension(
  tiny: 3,
  tiny2: 5,
  small: 10,
  small2: 15,
  small3: 20,
  small4: 25,
  small5: 30,
  medium: 40,
  medium2: 45,
  medium3: 50,
  medium4: 55,
  medium5: 60,
  large: 70,
  large2: 75,
  large3: 80,
  large4: 85,
  large5: 90,
  borderRadius: 13,
  buttonMinWidth: 250,
  buttonHeight: 60,
  appBarHeight: 70,
);

// Multiplier => 1.5x
Dimension get _expanded => const Dimension(
  tiny: 3,
  tiny2: 6,
  small: 12,
  small2: 18,
  small3: 24,
  small4: 30,
  small5: 36,
  medium: 48,
  medium2: 54,
  medium3: 60,
  medium4: 66,
  medium5: 72,
  large: 84,
  large2: 90,
  large3: 96,
  large4: 102,
  large5: 108,
  borderRadius: 15,
  buttonMinWidth: 300,
  buttonHeight: 72,
  appBarHeight: 84,
);

// Multiplier => 1.75x
Dimension get _large => const Dimension(
  tiny: 4,
  tiny2: 7,
  small: 14,
  small2: 21,
  small3: 28,
  small4: 35,
  small5: 42,
  medium: 56,
  medium2: 63,
  medium3: 70,
  medium4: 77,
  medium5: 84,
  large: 98,
  large2: 105,
  large3: 112,
  large4: 119,
  large5: 126,
  borderRadius: 18,
  buttonMinWidth: 350,
  buttonHeight: 84,
  appBarHeight: 98,
);

// Multiplier => 2x
Dimension get _extraLarge => const Dimension(
  tiny: 4,
  tiny2: 8,
  small: 16,
  small2: 24,
  small3: 32,
  small4: 40,
  small5: 48,
  medium: 64,
  medium2: 72,
  medium3: 80,
  medium4: 88,
  medium5: 96,
  large: 112,
  large2: 120,
  large3: 128,
  large4: 136,
  large5: 144,
  borderRadius: 20,
  buttonMinWidth: 400,
  buttonHeight: 96,
  appBarHeight: 112,
);
