import 'package:flutter/material.dart';
import 'package:ishowrunes/portfolio/components/fragment.dart';
import 'package:ishowrunes/portfolio/components/rune_grid.dart';
import 'package:ishowrunes/portfolio/models/expertise_model.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';

class WhatHelpWithFragment extends StatelessWidget {
  const WhatHelpWithFragment({
    super.key,
    required this.expertise,
  });

  final ExpertiseModel expertise;

  @override
  Widget build(BuildContext context) {
    return Fragment(
      title: expertise.title,
      subtitle: expertise.subtitle,
      children: [
        RuneGrid(
          crossAxisCount: 2,
          staggered: true,
          children: [
            for (final item in expertise.expertise) ...[
              DecoratedBox(
                decoration: BoxDecoration(
                  color: context.color.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(context.dimens.borderRadius),
                ),
                child: Padding(
                  padding: .all(context.dimens.small3),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        item.title,
                        style: context.textTheme.headlineSmall,
                      ),
                      SizedBox(height: context.dimens.small3),
                      Text(
                        item.description,
                        style: context.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}
