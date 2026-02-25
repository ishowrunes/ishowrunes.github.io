import 'package:flutter/material.dart';
import 'package:ishowrunes/portfolio/components/fragment.dart';
import 'package:ishowrunes/portfolio/components/rune_grid.dart';
import 'package:ishowrunes/portfolio/models/how_work_model.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';

class HowIWorkFragment extends StatelessWidget {
  const HowIWorkFragment({
    super.key,
    required this.howWork,
  });

  final HowWorkModel howWork;

  @override
  Widget build(BuildContext context) {
    return Fragment(
      title: howWork.title,
      subtitle: howWork.subtitle,
      children: [
        RuneGrid(
          crossAxisCount: 2,
          children: [
            for (final item in howWork.contents) ...[
              DecoratedBox(
                decoration: BoxDecoration(
                  color: context.color.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(context.dimens.borderRadius),
                ),
                child: Padding(
                  padding: .symmetric(
                    vertical: context.dimens.tiny2,
                    horizontal: context.dimens.small,
                  ),
                  child: Text(
                    item,
                    style: context.textTheme.bodyLarge,
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
