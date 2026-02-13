import 'package:flutter/material.dart';
import 'package:ishowrunes/portfolio/components/nav_bar.dart';
import 'package:ishowrunes/portfolio/components/profile_card.dart';
import 'package:ishowrunes/portfolio/components/theme_switch.dart';
import 'package:ishowrunes/portfolio/runes_view_model.dart';
import 'package:ishowrunes/resources/dimensions/dimension.dart';
import 'package:ishowrunes/resources/dimensions/window_size.dart';
import 'package:ishowrunes/theme_switcher/theme_switcher_view_model.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';
import 'package:konsumer_core/konsumer_core.dart';

class RunesPage extends StatelessWidget {
  const RunesPage({super.key, required this.size});

  final WindowSize size;

  @override
  Widget build(BuildContext context) {
    return DimensionProvider(
      dimension: AppDimension(windowSize: size),
      child: Scaffold(
        backgroundColor: context.color.surface,
        body: KonsumerCore(
          provider: runesVMProvider,
          onReady: (vm) => vm.init(),
          builder: (context, pod) {
            final state = pod.state;
            final themeVM = pod.ref.read(themeSwitcherVMProvider.notifier);
            return ListView(
              children: [
                ThemeSwitch(onThemeChange: themeVM.updateMode),
                NavBar(
                  onTap: (destination) {},
                ),
                if (state.profile != null) ProfileCard(profile: state.profile!),
              ],
            );
          },
        ),
      ),
    );
  }
}
