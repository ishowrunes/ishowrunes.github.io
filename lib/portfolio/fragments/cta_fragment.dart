import 'package:flutter/material.dart';
import 'package:ishowrunes/portfolio/components/fragment.dart';
import 'package:ishowrunes/portfolio/models/cta_model.dart';
import 'package:ishowrunes/portfolio/runes_view_model.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';
import 'package:ishowrunes/widgets/text_field/text_field.dart';

class CtaFragment extends StatelessWidget {
  const CtaFragment({
    super.key,
    required this.cta,
    required this.vm,
  });

  final CtaModel cta;
  final RunesViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Fragment(
      title: cta.title,
      subtitle: cta.subtitle,
      children: [
        for (final (index, item) in cta.contents.indexed) ...[
          if (index != 0) SizedBox(height: context.dimens.small),
          Text(
            item.title,
            style: context.textTheme.bodyLarge,
          ),
          if (item.contents != null)
            Column(
              crossAxisAlignment: .start,
              children: item.contents!
                  .map((item) {
                    return Text('-  $item', style: context.textTheme.bodyLarge);
                  })
                  .toList(growable: false),
            ),
        ],
        SizedBox(height: context.dimens.small3),
        RuneTextField(
          controller: vm.nameController,
          maxLength: 1000,
        ),
        SizedBox(height: context.dimens.small2),
        RuneTextField(
          controller: vm.emailController,
          maxLength: 200,
        ),
        SizedBox(height: context.dimens.small2),
        RuneTextField(
          controller: vm.messageController,
          maxLines: 5,
          maxLength: 2000,
        ),
        SizedBox(height: context.dimens.small2),
        SizedBox(
          width: double.infinity,
          height: context.dimens.medium4,
          child: FilledButton(
            onPressed: vm.sendMessage,
            child: const Text('Submit'),
          ),
        ),
      ],
    );
  }
}
