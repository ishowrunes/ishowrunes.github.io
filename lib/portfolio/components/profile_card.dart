import 'package:flutter/material.dart';
import 'package:img/img.dart';
import 'package:ishowrunes/portfolio/models/profile_model.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/dimension_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.profile,
  });

  final ProfileModel profile;

  @override
  Widget build(BuildContext context) {
    final radius = context.dimens.borderRadius;
    return Card(
      color: context.color.offWhite.color,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(context.dimens.small3),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: const Img.asset(
                asset: 'assets/pp.png',
                package: null,
                height: 300,
              ),
            ),
            SizedBox(height: context.dimens.small3),
            Text(
              profile.name,
              style: context.textTheme.displaySmall!.copyWith(
                color: context.color.offWhite.onColor,
              ),
            ),
            SizedBox(height: context.dimens.small4),
            Text(
              profile.heroDescription,
              style: context.textTheme.bodyLarge!.copyWith(
                color: context.color.offWhite.onColor,
              ),
            ),
            SizedBox(height: context.dimens.small4),
            Row(
              mainAxisAlignment: .center,
              children: [
                IconButton(
                  onPressed: () => _openUrl(profile.github),
                  icon: Img.asset(
                    asset: 'assets/github.svg.vec',
                    package: null,
                    height: context.dimens.small5,
                    color: context.color.onTertiaryFixedVariant,
                  ),
                ),
                SizedBox(width: context.dimens.small4),
                IconButton(
                  onPressed: () => _openUrl(profile.linkedin),
                  icon: Img.asset(
                    asset: 'assets/linkedin.svg.vec',
                    package: null,
                    height: context.dimens.small5,
                    color: context.color.onTertiaryFixedVariant,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _openUrl(String url) {
    launchUrl(Uri.parse(url));
  }
}
