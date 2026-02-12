import 'package:flutter/material.dart';
import 'package:ishowrunes/resources/dimensions/dimension.dart';
import 'package:ishowrunes/resources/dimensions/window_size.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';

class RunesPage extends StatelessWidget {
  const RunesPage({super.key, required this.size});

  final WindowSize size;

  @override
  Widget build(BuildContext context) {
    return DimensionProvider(
      dimension: AppDimension(windowSize: size),
      child: Scaffold(
        backgroundColor: context.color.surface,
        body: ListView(
          children: [
            Text(
              'ishowrunes',
              style: context.textTheme.displayLarge,
            ),
          ],
        ),
      ),
    );
  }
}
