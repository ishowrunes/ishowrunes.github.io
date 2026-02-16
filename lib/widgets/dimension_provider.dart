import 'package:flutter/material.dart';
import 'package:ishowrunes/resources/dimensions.dart';

class DimensionProvider extends InheritedWidget {
  const DimensionProvider({
    required this.dimension,
    required super.child,
  });

  final AppDimension dimension;

  static AppDimension of(BuildContext context) {
    final appDimensionProvider = context.dependOnInheritedWidgetOfExactType<DimensionProvider>();
    assert(appDimensionProvider != null, 'The app is not yet ready to provide the dimensions');
    return appDimensionProvider!.dimension;
  }

  @override
  bool updateShouldNotify(DimensionProvider oldProvider) {
    return dimension != oldProvider.dimension;
  }
}

extension DimensionExtension on BuildContext {
  Dimension get dimens => DimensionProvider.of(this).dimens;

  Dimension get baseDimens => DimensionProvider.of(this).baseDimens;

  double get maxWidth => DimensionProvider.of(this).maxWidth;
}
