import 'package:flutter/material.dart';
import 'package:ishowrunes/portfolio/components/fragment.dart';
import 'package:ishowrunes/portfolio/components/rune_grid.dart';
import 'package:ishowrunes/portfolio/models/skills_model.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';

class SkillsFragment extends StatelessWidget {
  const SkillsFragment({
    super.key,
    required this.skills,
  });

  final SkillsModel skills;

  @override
  Widget build(BuildContext context) {
    return Fragment(
      title: skills.title,
      subtitle: skills.subtitle,
      children: [
        RuneGrid(
          crossAxisCount: 2,
          staggered: true,
          children: [
            for (final item in skills.mySkills) ...[
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
                        style: context.textTheme.titleLarge,
                      ),
                      SizedBox(height: context.dimens.small3),
                      Padding(
                        padding: .only(left: context.dimens.small),
                        child: Column(
                          crossAxisAlignment: .start,
                          spacing: context.dimens.tiny2,
                          children: [
                            for (final skill in item.skills) ...[
                              Text(
                                '-  $skill',
                                style: context.textTheme.bodyLarge,
                              ),
                            ],
                          ],
                        ),
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
