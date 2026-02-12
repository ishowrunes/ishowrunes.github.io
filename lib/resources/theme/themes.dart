import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishowrunes/resources/dimensions.dart';
import 'package:ishowrunes/resources/theme/extended_color.dart';
import 'package:ishowrunes/resources/theme/rune_color.dart';
import 'package:ishowrunes/resources/theme/rune_color_scheme.dart';

class RuneTheme {
  RuneTheme(this.size);

  final WindowSize size;

  RuneColorScheme get lightColorScheme {
    return const RuneColorScheme(
      brightness: Brightness.light,
      primary: Color(0xffa83300),
      surfaceTint: Color(0xffac3400),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd14305),
      onPrimaryContainer: Color(0xfffffbff),
      secondary: Color(0xff4b6700),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc5ff41),
      onSecondaryContainer: Color(0xff557400),
      tertiary: Color(0xff005e53),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff00796b),
      onTertiaryContainer: Color(0xffa1feec),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff261814),
      onSurfaceVariant: Color(0xff5a4139),
      outline: Color(0xff8e7067),
      outlineVariant: Color(0xffe3bfb4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3d2d27),
      inversePrimary: Color(0xffffb59d),
      primaryFixed: Color(0xffffdbd0),
      onPrimaryFixed: Color(0xff390b00),
      primaryFixedDim: Color(0xffffb59d),
      onPrimaryFixedVariant: Color(0xff832600),
      secondaryFixed: Color(0xffbcf537),
      onSecondaryFixed: Color(0xff141f00),
      secondaryFixedDim: Color(0xffa1d80e),
      onSecondaryFixedVariant: Color(0xff384e00),
      tertiaryFixed: Color(0xff97f3e2),
      onTertiaryFixed: Color(0xff00201b),
      tertiaryFixedDim: Color(0xff7ad7c6),
      onTertiaryFixedVariant: Color(0xff005047),
      surfaceDim: Color(0xffefd4cc),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ed),
      surfaceContainer: Color(0xffffe9e3),
      surfaceContainerHigh: Color(0xfffee2da),
      surfaceContainerHighest: Color(0xfff8ddd5),
      success: ExtendedColor(
        color: Color(0xff009543),
        onColor: Color(0xffffffff),
        colorContainer: Color(0xff31B55C),
        onColorContainer: Color(0xff001705),
      ),
      warning: ExtendedColor(
        color: Color(0xffDC7528),
        onColor: Color(0xffFFFFFF),
        colorContainer: Color(0xffFFDCBE),
        onColorContainer: Color(0xff693C00),
      ),
      info: ExtendedColor(
        color: Color(0xff304ffe),
        onColor: Color(0xffffffff),
        colorContainer: Color(0xff304ffe),
        onColorContainer: Color(0xffe2e3ff),
      ),
      primarySwatch: _primarySwatch,
      secondarySwatch: _secondarySwatch,
      tertiarySwatch: _tertiarySwatch,
      neutralSwatch: _neutralSwatch,
      neutralVariantSwatch: _neutralVariantSwatch,
    );
  }

  RuneColorScheme get darkColorScheme {
    return const RuneColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb59d),
      surfaceTint: Color(0xffffb59d),
      onPrimary: Color(0xff5d1800),
      primaryContainer: Color(0xffd14305),
      onPrimaryContainer: Color(0xfffffbff),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff253500),
      secondaryContainer: Color(0xffbcf537),
      onSecondaryContainer: Color(0xff506e00),
      tertiary: Color(0xff7ad7c6),
      onTertiary: Color(0xff003730),
      tertiaryContainer: Color(0xff00796b),
      onTertiaryContainer: Color(0xffa1feec),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1d100c),
      onSurface: Color(0xfff8ddd5),
      onSurfaceVariant: Color(0xffe3bfb4),
      outline: Color(0xffaa8a80),
      outlineVariant: Color(0xff5a4139),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff8ddd5),
      inversePrimary: Color(0xffac3400),
      primaryFixed: Color(0xffffdbd0),
      onPrimaryFixed: Color(0xff390b00),
      primaryFixedDim: Color(0xffffb59d),
      onPrimaryFixedVariant: Color(0xff832600),
      secondaryFixed: Color(0xffbcf537),
      onSecondaryFixed: Color(0xff141f00),
      secondaryFixedDim: Color(0xffa1d80e),
      onSecondaryFixedVariant: Color(0xff384e00),
      tertiaryFixed: Color(0xff97f3e2),
      onTertiaryFixed: Color(0xff00201b),
      tertiaryFixedDim: Color(0xff7ad7c6),
      onTertiaryFixedVariant: Color(0xff005047),
      surfaceDim: Color(0xff1d100c),
      surfaceBright: Color(0xff463530),
      surfaceContainerLowest: Color(0xff180b07),
      surfaceContainerLow: Color(0xff261814),
      surfaceContainer: Color(0xff2b1c17),
      surfaceContainerHigh: Color(0xff362621),
      surfaceContainerHighest: Color(0xff42312c),
      primarySwatch: _primarySwatch,
      secondarySwatch: _secondarySwatch,
      tertiarySwatch: _tertiarySwatch,
      neutralSwatch: _neutralSwatch,
      neutralVariantSwatch: _neutralVariantSwatch,
      success: ExtendedColor(
        color: Color(0xff41B86E),
        onColor: Color(0xffffffff),
        colorContainer: Color(0xff00873C),
        onColorContainer: Color(0xffFFFFFF),
      ),
      warning: ExtendedColor(
        color: Color(0xffFD8F40),
        onColor: Color(0xffFFFFFF),
        colorContainer: Color(0xff693C00),
        onColorContainer: Color(0xffFFDCBE),
      ),
      info: ExtendedColor(
        color: Color(0xffbbc3ff),
        onColor: Color(0xff304ffe),
        colorContainer: Color(0xff304ffe),
        onColorContainer: Color(0xffe2e3ff),
      ),
    );
  }

  @nonVirtual
  ThemeData get light {
    return _resolveTheme(lightColorScheme);
  }

  @nonVirtual
  ThemeData get dark {
    return _resolveTheme(darkColorScheme);
  }

  @protected
  TextTheme get textTheme {
    final multiplier = size.multiplier;
    return TextTheme(
      // Section Titles / Big Headers
      displayLarge: GoogleFonts.poppins(
        fontSize: 48 * multiplier,
        fontWeight: FontWeight.w800, // Bold weight
        letterSpacing: -1.2,
        height: 1.2,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: 36 * multiplier,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
        height: 1.2,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 28 * multiplier,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
        height: 1.2,
      ),

      // Body / General Text
      bodyLarge: GoogleFonts.manrope(
        fontSize: 16 * multiplier,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
      bodyMedium: GoogleFonts.manrope(
        fontSize: 14 * multiplier,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
      bodySmall: GoogleFonts.manrope(
        fontSize: 12 * multiplier,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),

      // Optional: Buttons / Labels
      titleLarge: GoogleFonts.poppins(
        fontSize: 20 * multiplier,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.2,
      ),
      titleMedium: GoogleFonts.manrope(
        fontSize: 16 * multiplier,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: GoogleFonts.manrope(
        fontSize: 14 * multiplier,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  ThemeData _resolveTheme(RuneColorScheme scheme) {
    return ThemeData(
      useMaterial3: true,
      brightness: scheme.brightness,
      colorScheme: scheme,
      textTheme: textTheme.apply(bodyColor: scheme.onSurface, displayColor: scheme.onSurface),
      scaffoldBackgroundColor: scheme.surface,
      canvasColor: scheme.surface,
    );
  }
}

const _primary = 0xFF2F8196;
const _secondary = 0xFF6A7A7F;
const _tertiary = 0xFF73758E;
const _neutral = 0xFF767778;
const _neutralVariant = 0xff757780;

const _primarySwatch = RuneColor(_primary, <int, Color>{
  0: Color(0xFF000000),
  5: Color(0xFF001319),
  10: Color(0xFF001F27),
  15: Color(0xFF002A34),
  20: Color(0xFF003642),
  25: Color(0xFF004250),
  30: Color(0xFF004E5E),
  35: Color(0xFF005A6D),
  40: Color(0xFF00677C),
  50: Color(0xFF2F8196),
  60: Color(0xFF4D9BB1),
  70: Color(0xFF6AB6CD),
  80: Color(0xFF86D1E9),
  90: Color(0xFFB1EBFF),
  95: Color(0xFFDBF5FF),
  98: Color(0xFFF1FBFF),
  99: Color(0xFFF9FDFF),
  100: Color(0xFFFFFFFF),
});

const _secondarySwatch = RuneColor(_secondary, <int, Color>{
  0: Color(0xFF000000),
  5: Color(0xFF041317),
  10: Color(0xFF0F1E22),
  15: Color(0xFF19282D),
  20: Color(0xFF243338),
  25: Color(0xFF2F3E43),
  30: Color(0xFF3A494E),
  35: Color(0xFF46555A),
  40: Color(0xFF526166),
  50: Color(0xFF6A7A7F),
  60: Color(0xFF849399),
  70: Color(0xFF9EAEB4),
  80: Color(0xFFB9C9CF),
  90: Color(0xFFD5E5EC),
  95: Color(0xFFE3F3FA),
  98: Color(0xFFF1FBFF),
  99: Color(0xFFF9FDFF),
  100: Color(0xFFFFFFFF),
});

const _tertiarySwatch = RuneColor(_tertiary, <int, Color>{
  0: Color(0xFF000000),
  5: Color(0xFF0C0F23),
  10: Color(0xFF171A2E),
  15: Color(0xFF222439),
  20: Color(0xFF2C2F44),
  25: Color(0xFF373A50),
  30: Color(0xFF43455C),
  35: Color(0xFF4E5168),
  40: Color(0xFF5A5D75),
  50: Color(0xFF73758E),
  60: Color(0xFF8D8FA9),
  70: Color(0xFFA8A9C4),
  80: Color(0xFFC3C4E0),
  90: Color(0xFFDFE0FD),
  95: Color(0xFFF0EFFF),
  98: Color(0xFFFBF8FF),
  99: Color(0xFFFFFBFF),
  100: Color(0xFFFFFFFF),
});

const _neutralSwatch = RuneColor(_neutral, <int, Color>{
  0: Color(0xFF000000),
  5: Color(0xFF0F1112),
  10: Color(0xFF1A1C1D),
  15: Color(0xFF242627),
  20: Color(0xFF2F3132),
  25: Color(0xFF3A3C3C),
  30: Color(0xFF454748),
  35: Color(0xFF515353),
  40: Color(0xFF5D5F5F),
  50: Color(0xFF767778),
  60: Color(0xFF909192),
  70: Color(0xFFAAABAC),
  80: Color(0xFFC6C6C7),
  90: Color(0xFFE2E2E3),
  95: Color(0xFFF0F1F1),
  98: Color(0xFFF9F9FA),
  99: Color(0xFFFCFCFD),
  100: Color(0xFFFFFFFF),
});

const _neutralVariantSwatch = RuneColor(_neutralVariant, <int, Color>{
  0: Color(0xff000000),
  5: Color(0xff0F1118),
  10: Color(0xff191B23),
  15: Color(0xff23252D),
  20: Color(0xff2E3038),
  25: Color(0xff393B43),
  30: Color(0xff45464F),
  35: Color(0xff50525A),
  40: Color(0xff5C5E67),
  50: Color(0xff757780),
  60: Color(0xff8F909A),
  70: Color(0xffAAAAB4),
  80: Color(0xffC5C6D0),
  90: Color(0xffE1E2EC),
  95: Color(0xffF0F0FA),
  98: Color(0xffFAF8FF),
  99: Color(0xffFEFBFF),
  100: Color(0xffFFFFFF),
});
