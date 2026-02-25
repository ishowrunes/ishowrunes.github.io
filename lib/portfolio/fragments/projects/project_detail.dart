import 'package:flutter/material.dart';
import 'package:img/img.dart';
import 'package:ishowrunes/portfolio/fragments/projects/project_target.dart';
import 'package:ishowrunes/portfolio/models/project_model.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({
    super.key,
    required this.project,
  });

  final MyProject project;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.windowSize.order <= 1;
    final target = ProjectTarget(
      targets: project.targets,
      orientation: isMobile ? .horizontal : .vertical,
      child: isMobile
          ? null
          : IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Symbols.close,
                weight: 32767,
                fontWeight: FontWeight.w900,
              ),
              style: IconButton.styleFrom(
                backgroundColor: context.color.outlineVariant,
                shape: const CircleBorder(),
              ),
            ),
    );
    final child = DecoratedBox(
      decoration: BoxDecoration(
        color: context.color.surfaceContainerHigh,
        borderRadius: BorderRadius.vertical(top: Radius.circular(context.dimens.borderRadius)),
      ),
      child: Padding(
        padding: .all(context.dimens.small3),
        child: ListView(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(context.dimens.borderRadius),
                child: Img.asset(
                  asset: 'assets/${project.asset}',
                  package: null,
                ),
              ),
            ),
            SizedBox(height: context.dimens.small3),
            Center(
              child: Text(
                project.name,
                style: context.textTheme.headlineSmall,
              ),
            ),
            SizedBox(height: context.dimens.small3),
            Text(
              project.description,
              style: context.textTheme.bodyLarge,
            ),
            SizedBox(height: context.dimens.small3),
            Text(
              project.detail,
              style: context.textTheme.bodyLarge,
            ),
            SizedBox(height: context.dimens.small3),
            Text(
              'What I Contributed',
              style: context.textTheme.titleLarge,
            ),
            SizedBox(height: context.dimens.small2),
            for(final contribution in project.contributions)...[
              Padding(
                padding: .only(top: context.dimens.small),
                child: Text(
                  '-  $contribution',
                  style: context.textTheme.bodyLarge,
                ),
              )
            ],
            if (isMobile) target,
          ],
        ),
      ),
    );

    if (isMobile) return child;

    return Padding(
      padding: .only(top: context.dimens.small3),
      child: Row(
        crossAxisAlignment: .start,
        spacing: context.dimens.small3,
        children: [
          Expanded(child: child),
          target,
        ],
      ),
    );
  }
}
