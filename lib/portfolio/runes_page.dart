import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:ishowrunes/portfolio/components/nav_bar.dart';
import 'package:ishowrunes/portfolio/components/profile_card.dart';
import 'package:ishowrunes/portfolio/components/theme_switch.dart';
import 'package:ishowrunes/portfolio/fragments/cta_fragment.dart';
import 'package:ishowrunes/portfolio/fragments/how_i_work_fragment.dart';
import 'package:ishowrunes/portfolio/fragments/intro_fragment.dart';
import 'package:ishowrunes/portfolio/fragments/projects/project_fragment.dart';
import 'package:ishowrunes/portfolio/fragments/skills_fragment.dart';
import 'package:ishowrunes/portfolio/fragments/what_help_with_fragment.dart';
import 'package:ishowrunes/portfolio/runes_view_model.dart';
import 'package:ishowrunes/resources/dimensions/dimension.dart';
import 'package:ishowrunes/resources/dimensions/window_size.dart';
import 'package:ishowrunes/theme_switcher/theme_switcher_view_model.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';
import 'package:konsumer_core/konsumer_core.dart';

class RunesPage extends StatelessWidget {
  const RunesPage({
    super.key,
    required this.size,
  });

  final WindowSize size;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return SelectionArea(
      child: DimensionProvider(
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
                runeVM: pod.vm,
              );
            },
          ),
        ),
      ),
    );
  }
}

class _RunesFragment extends StatefulWidget {
  const _RunesFragment({
    required this.themeVM,
    required this.state,
    required this.runeVM,
  });

  final ThemeSwitcherViewModel themeVM;
  final RunesState state;
  final RunesViewModel runeVM;

  @override
  State<_RunesFragment> createState() => _RunesFragmentState();
}

class _RunesFragmentState extends State<_RunesFragment> {
  final controller = ScrollController();
  late final Map<NavDestination, GlobalKey> keyStore;

  @override
  void initState() {
    super.initState();
    keyStore = {
      .about: GlobalKey(),
      .expertise: GlobalKey(),
      .projects: GlobalKey(),
      .contact: GlobalKey(),
    };
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isBigScreen = context.windowSize.order > 1;

    final dSmall = context.dimens.small;
    final navBarHeight = isBigScreen ? dSmall + context.baseDimens.navBarHeight + dSmall : context.baseDimens.navBarHeight;

    final navBar = NavBar(
      onTap: (destination) {
        _scrollTo(keyStore[destination]);
      },
    );

    final themeSwitch = ThemeSwitch(
      onThemeChange: widget.themeVM.updateMode,
    );

    final profile = ProfileCard(
      profile: widget.state.profile!,
    );

    final basePadding = context.dimens.small3;
    final maxProfileCardWidth = 320 + basePadding;
    final double profileCardWidth = math.min(context.maxWidth * 0.35, maxProfileCardWidth);

    final sections = _Sections(
      profile: isBigScreen ? null : profile,
      state: widget.state,
      keyStore: keyStore,
      vm: widget.runeVM,
    );

    final maxWidth = context.dimens.maxWidth;
    final padding = ((context.maxWidth - maxWidth).clamp(basePadding * 2, maxWidth)) / 2;

    final body = CustomScrollView(
      controller: controller,
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
            top: navBarHeight + context.dimens.small3,
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

  void _scrollTo(GlobalKey? key) {
    const duration = Duration(milliseconds: 300);
    const curve = Curves.easeInOut;

    if (key == null) {
      controller.animateTo(
        0,
        duration: duration,
        curve: curve,
      );
    }

    Scrollable.ensureVisible(
      key!.currentContext!,
      duration: duration,
      curve: curve,
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
    return Align(
      alignment: .topRight,
      child: Padding(
        padding: .all(context.dimens.small),
        child: themeSwitch,
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
    required this.state,
    required this.keyStore,
    required this.vm,
  });

  final Map<NavDestination, GlobalKey> keyStore;
  final ProfileCard? profile;
  final RunesState state;
  final RunesViewModel vm;

  @override
  Widget build(BuildContext context) {
    if (!state.stateReady) return const SizedBox.shrink();
    return Padding(
      padding: EdgeInsets.all(context.dimens.small3),
      child: Column(
        crossAxisAlignment: .start,
        spacing: context.windowSize.order > 1 ? context.dimens.large : context.dimens.small5,
        children: [
          if (profile != null) profile!,
          IntroFragment(intro: state.intro!),
          HowIWorkFragment(key: keyStore[NavDestination.about], howWork: state.howWork!),
          WhatHelpWithFragment(expertise: state.expertise!),
          SkillsFragment(key: keyStore[NavDestination.expertise], skills: state.skills!),
          ProjectFragment(key: keyStore[NavDestination.projects], projects: state.projects!),
          CtaFragment(
            key: keyStore[NavDestination.contact],
            cta: state.cta!,
            vm: vm,
          ),
        ],
      ),
    );
  }
}
