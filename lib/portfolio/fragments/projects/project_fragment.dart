import 'package:flutter/material.dart';
import 'package:img/img.dart';
import 'package:ishowrunes/portfolio/components/fragment.dart';
import 'package:ishowrunes/portfolio/components/rune_grid.dart';
import 'package:ishowrunes/portfolio/fragments/projects/project_detail.dart';
import 'package:ishowrunes/portfolio/fragments/projects/project_target.dart';
import 'package:ishowrunes/portfolio/models/project_model.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';

class ProjectFragment extends StatelessWidget {
  const ProjectFragment({
    super.key,
    required this.projects,
  });

  final ProjectModel projects;

  @override
  Widget build(BuildContext context) {
    final appDimension = DimensionProvider.of(context);

    return Fragment(
      title: projects.title,
      subtitle: projects.subtitle,
      children: [
        RuneGrid(
          crossAxisCount: 2,
          staggered: true,
          children: [
            for (final project in projects.myProjects) ...[
              DecoratedBox(
                decoration: BoxDecoration(
                  color: context.color.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(context.dimens.borderRadius),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(context.dimens.borderRadius),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        constraints: BoxConstraints(
                          maxWidth: appDimension.dimens.maxWidth,
                        ),
                        builder: (context) {
                          return DimensionProvider(
                            dimension: appDimension,
                            child: Center(
                              child: ProjectDetail(project: project),
                            ),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: .all(context.dimens.small3),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(context.dimens.borderRadius),
                            ),
                            child: Center(
                              child: Padding(
                                padding: .all(context.dimens.small),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(context.dimens.borderRadius),
                                  child: Img.asset(
                                    asset: 'assets/${project.asset}',
                                    package: null,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: context.dimens.small3),
                          Text(
                            project.name,
                            style: context.textTheme.headlineSmall,
                          ),
                          SizedBox(height: context.dimens.small3),
                          Text(
                            project.description,
                            style: context.textTheme.bodyLarge,
                          ),
                          ProjectTarget(
                            targets: project.targets,
                          ),
                        ],
                      ),
                    ),
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
