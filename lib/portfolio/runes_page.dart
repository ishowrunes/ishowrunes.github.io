import 'dart:math' as math;

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
    final width = MediaQuery.sizeOf(context).width;
    return DimensionProvider(
      dimension: AppDimension(
        windowSize: size,
        maxWidth: width,
      ),
      child: Scaffold(
        backgroundColor: context.color.surface,
        body: KonsumerCore(
          provider: runesVMProvider,
          onReady: (vm) => vm.init(),
          builder: (context, pod) {
            final state = pod.state;
            final themeVM = pod.ref.read(themeSwitcherVMProvider.notifier);

            return _RunesFragment(
              state: state,
              themeVM: themeVM,
            );
          },
        ),
      ),
    );
  }
}

class _RunesFragment extends StatelessWidget {
  const _RunesFragment({
    required this.themeVM,
    required this.state,
  });

  final ThemeSwitcherViewModel themeVM;
  final RunesState state;

  @override
  Widget build(BuildContext context) {
    final isBigScreen = switch (resolveSize(context.maxWidth)) {
      .compact || .medium => false,
      .expanded || .large || .extraLarge => true,
    };

    final dSmall = context.dimens.small;
    final navBarHeight = isBigScreen ? dSmall + context.baseDimens.navBarHeight + dSmall : context.baseDimens.navBarHeight;

    final navBar = NavBar(
      onTap: (destination) {},
    );

    final themeSwitch = ThemeSwitch(
      onThemeChange: themeVM.updateMode,
    );

    final profile = ProfileCard(
      profile: state.profile!,
    );

    final basePadding = context.dimens.small3;
    final maxProfileCardWidth = 320 + basePadding;
    final double profileCardWidth = math.min(context.maxWidth * 0.35, maxProfileCardWidth);

    final sections = _Sections(
      profile: isBigScreen ? null : profile,
    );

    final padding = ((context.maxWidth - 1280).clamp(basePadding * 2, 1280)) / 2;

    final body = CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          floating: true,
          pinned: true,
          delegate: _NavBarDelegate(
            maxHeight: navBarHeight,
            child: isBigScreen
                ? _WebAppbar(
                    navBar: navBar,
                    themeSwitch: themeSwitch,
                  )
                : _MobileAppbar(
                    themeSwitch: themeSwitch,
                  ),
          ),
        ),
        SliverToBoxAdapter(
          child: isBigScreen
              ? Padding(
                  padding: .only(
                    left: profileCardWidth + padding + basePadding,
                    right: padding,
                  ),
                  child: sections,
                )
              : sections,
        ),
      ],
    );

    if (isBigScreen) {
      return Stack(
        children: [
          body,
          Positioned(
            top: navBarHeight,
            left: padding,
            child: SizedBox(
              width: profileCardWidth,
              child: profile,
            ),
          ),
        ],
      );
    }

    return Column(
      children: [
        Expanded(child: body),
        navBar,
      ],
    );
  }
}

class _NavBarDelegate extends SliverPersistentHeaderDelegate {
  _NavBarDelegate({
    required this.maxHeight,
    required this.child,
  });

  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => maxHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      elevation: 0,
      child: child,
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}

class _MobileAppbar extends StatelessWidget {
  const _MobileAppbar({required this.themeSwitch});

  final ThemeSwitch themeSwitch;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.baseDimens.navBarHeight,
      child: Align(
        alignment: .topRight,
        child: Padding(
          padding: .all(context.dimens.small3),
          child: themeSwitch,
        ),
      ),
    );
  }
}

class _WebAppbar extends StatelessWidget {
  const _WebAppbar({
    required this.navBar,
    required this.themeSwitch,
  });

  final NavBar navBar;
  final ThemeSwitch themeSwitch;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        Padding(
          padding: .all(context.dimens.small),
          child: SizedBox(
            width: navBarWidth(context),
            child: navBar,
          ),
        ),
        SizedBox(width: context.dimens.small),
        themeSwitch,
      ],
    );
  }

  double navBarWidth(BuildContext context) {
    final maxWidth = context.maxWidth;
    const probableWidth = 420.0;
    return maxWidth > probableWidth ? probableWidth : double.infinity;
  }
}

class _Sections extends StatelessWidget {
  const _Sections({
    required this.profile,
  });

  final ProfileCard? profile;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          if (profile != null) profile!,
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
          Text('xyz'),
        ],
      ),
    );
  }
}
