import 'package:flutter/material.dart';
import 'package:img/img.dart';
import 'package:ishowrunes/portfolio/models/project_model.dart';
import 'package:ishowrunes/util/launcher_util.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';

class ProjectTarget extends StatelessWidget {
  const ProjectTarget({
    required this.targets,
    this.orientation = Orientation.horizontal,
    this.child,
  });

  final List<ProjectTargetModel>? targets;
  final Widget? child;
  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    if (targets == null && child == null) return const SizedBox.shrink();

    final children = [
      if (child != null) child!,
      for (final target in targets ?? []) ...[
        IconButton(
          onPressed: () => openUrl(target.url),
          icon: Img.asset(
            asset: 'assets/${target.source.source}.svg.vec',
            package: null,
            height: context.dimens.small4,
            color: context.color.onSurface,
          ),
          style: IconButton.styleFrom(
            backgroundColor: context.color.outlineVariant,
            shape: const CircleBorder(),
          ),
        ),
      ],
    ];

    final spacing = context.dimens.small3;

    return Padding(
      padding: .only(top: context.dimens.small3),
      child: children.length == 1
          ? children.first
          : orientation == .vertical
          ? Column(
              crossAxisAlignment: .start,
              spacing: spacing,
              children: children,
            )
          : Row(
              spacing: spacing,
              children: children,
            ),
    );
  }
}

enum Orientation { vertical, horizontal }
