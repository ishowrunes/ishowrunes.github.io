import 'package:flutter/material.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum NavDestination { home, about, expertise, projects, contact }

const Map<int, _NavItem> _navItems = {
  0: _NavItem(
    destination: .home,
    label: 'Home',
    icon: Symbols.home_rounded,
  ),
  1: _NavItem(
    destination: .about,
    label: 'About',
    icon: Symbols.person_rounded,
  ),
  2: _NavItem(
    destination: .expertise,
    label: 'Expertise',
    icon: Symbols.workspace_premium_rounded,
  ),
  3: _NavItem(
    destination: .projects,
    label: 'Projects',
    icon: Symbols.devices_rounded,
  ),
  4: _NavItem(
    destination: .contact,
    label: 'Contact',
    icon: Symbols.attach_email_rounded,
  ),
};

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.onTap,
  });

  final ValueChanged<NavDestination> onTap;

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    final textTheme = context.textTheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(context.dimens.borderRadius),
      ),
      child: NavigationBar(
        elevation: 0,
        height: context.baseDimens.large + context.baseDimens.tiny,
        labelPadding: .zero,
        labelBehavior: .alwaysShow,
        backgroundColor: Colors.transparent,
        labelTextStyle: WidgetStatePropertyAll(
          textTheme.labelLarge!.copyWith(color: color.onSurface),
        ),
        indicatorColor: Colors.transparent,
        onDestinationSelected: (i) => onTap(_navItems[i]?.destination ?? .home),
        destinations: _navItems.values
            .map((item) {
              return NavigationDestination(
                label: item.label,
                icon: Icon(
                  item.icon,
                  color: color.onSurface,
                ),
              );
            })
            .toList(growable: false),
      ),
    );
  }
}

class _NavItem {
  const _NavItem({
    required this.destination,
    required this.label,
    required this.icon,
  });

  final NavDestination destination;
  final String label;
  final IconData icon;
}
