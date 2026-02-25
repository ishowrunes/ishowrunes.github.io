import 'package:flutter/material.dart';
import 'package:ishowrunes/portfolio/components/fragment.dart';
import 'package:ishowrunes/portfolio/models/intro_model.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';

class IntroFragment extends StatelessWidget {
  const IntroFragment({
    super.key,
    required this.intro,
  });

  final IntroModel intro;

  @override
  Widget build(BuildContext context) {
    return Fragment(
      title: intro.title,
      subtitle: intro.subtitle,
      children: [
        for (final (index, item) in intro.intros.indexed) ...[
          if (index != 0) SizedBox(height: context.dimens.small),
          Text(
            item,
            style: context.textTheme.bodyLarge,
          ),
        ],
      ],
    );
  }
}
