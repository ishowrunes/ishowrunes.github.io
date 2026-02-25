import 'package:flutter/material.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';

class Fragment extends StatelessWidget {
  const Fragment({
    super.key,
    required this.title,
    required this.subtitle,
    required this.children,
  });

  final String title;
  final String subtitle;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme.displayLarge;
    return Column(
      mainAxisSize: .min,
      crossAxisAlignment: .start,
      children: [
        Text(
          title.toUpperCase(),
          style: textTheme,
        ),
        Text(
          subtitle.toUpperCase(),
          style: textTheme!.copyWith(color: context.color.onSurface.withValues(alpha: 0.4)),
        ),
        SizedBox(height: context.dimens.small3),
        ...children,
      ],
    );
  }
}
