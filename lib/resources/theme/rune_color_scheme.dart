import 'package:flutter/material.dart';
import 'package:ishowrunes/resources/theme/extended_color.dart';
import 'package:ishowrunes/resources/theme/rune_color.dart';

class RuneColorScheme extends ColorScheme {
  const RuneColorScheme({
    required super.brightness,
    required super.primary,
    required super.surfaceTint,
    required super.onPrimary,
    required super.primaryContainer,
    required super.onPrimaryContainer,
    required super.secondary,
    required super.onSecondary,
    required super.secondaryContainer,
    required super.onSecondaryContainer,
    required super.tertiary,
    required super.onTertiary,
    required super.tertiaryContainer,
    required super.onTertiaryContainer,
    required super.error,
    required super.onError,
    required super.errorContainer,
    required super.onErrorContainer,
    required super.surface,
    required super.onSurface,
    required super.onSurfaceVariant,
    required super.outline,
    required super.outlineVariant,
    required super.shadow,
    required super.scrim,
    required super.inverseSurface,
    required super.inversePrimary,
    required super.primaryFixed,
    required super.onPrimaryFixed,
    required super.primaryFixedDim,
    required super.onPrimaryFixedVariant,
    required super.secondaryFixed,
    required super.onSecondaryFixed,
    required super.secondaryFixedDim,
    required super.onSecondaryFixedVariant,
    required super.tertiaryFixed,
    required super.onTertiaryFixed,
    required super.tertiaryFixedDim,
    required super.onTertiaryFixedVariant,
    required super.surfaceDim,
    required super.surfaceBright,
    required super.surfaceContainerLowest,
    required super.surfaceContainerLow,
    required super.surfaceContainer,
    required super.surfaceContainerHigh,
    required super.surfaceContainerHighest,
    required this.primarySwatch,
    required this.secondarySwatch,
    required this.tertiarySwatch,
    required this.neutralSwatch,
    required this.neutralVariantSwatch,
    required this.success,
    required this.warning,
    required this.info,
  });

  final RuneColor primarySwatch;
  final RuneColor secondarySwatch;
  final RuneColor tertiarySwatch;
  final RuneColor neutralSwatch;
  final RuneColor neutralVariantSwatch;

  final ExtendedColor success;
  final ExtendedColor warning;
  final ExtendedColor info;
}