import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:messenger_app/config/Strings.dart';
import 'package:messenger_app/config/images.dart';

class Welcomeheading extends StatelessWidget {
  const Welcomeheading({super.key});

   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetsImage.appIconSVG,
              // ignore: deprecated_member_use
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          AppString.appName,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(),
        ),
      ],
    );
  }
}