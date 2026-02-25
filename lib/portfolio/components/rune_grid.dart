import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';

class RuneGrid extends StatelessWidget {
  const RuneGrid({
    super.key,
    required this.crossAxisCount,
    required this.children,
    this.runSpacing,
    this.spacing,
    this.staggered = false,
  });

  final int crossAxisCount;
  final List<Widget> children;
  final double? runSpacing;
  final double? spacing;

  final bool staggered;

  @override
  Widget build(BuildContext context) {
    final resolvedRunSpacing = runSpacing ?? context.dimens.small;
    final resolvedSpacing = spacing ?? context.dimens.small;
    final isBigScreen = context.windowSize.order > 1;

    final resolvedChildren = staggered || !isBigScreen
        ? children
        : _chunk(children, crossAxisCount)
              .map((pair) {
                return Wrap(
                  runSpacing: resolvedRunSpacing,
                  spacing: resolvedSpacing,
                  children: pair,
                );
              })
              .toList(growable: false);

    if (isBigScreen && staggered) {
      return StaggeredGrid.count(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: resolvedSpacing,
        crossAxisSpacing: resolvedRunSpacing,
        children: resolvedChildren,
      );
    }

    return Column(
      crossAxisAlignment: .stretch,
      spacing: resolvedSpacing,
      children: resolvedChildren,
    );
  }

  List<List<Widget>> _chunk(List<Widget> children, int size) {
    return [
      for (var i = 0; i < children.length; i += size)
        children.sublist(
          i,
          (i + size < children.length) ? i + size : children.length,
        ),
    ];
  }
}
