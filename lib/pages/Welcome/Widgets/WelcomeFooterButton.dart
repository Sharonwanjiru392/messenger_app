// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:messenger_app/config/Strings.dart';
import 'package:messenger_app/config/images.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Welcomefooterbutton extends StatelessWidget {
  const Welcomefooterbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      onSubmit: () {
        Get.offAllNamed("/authPage");
      },
      sliderButtonIcon: Container(
        width: 25,
        height: 25,
        child: SvgPicture.asset(AssetsImage.plugSVG, width: 25),
      ),
      text: WelcomePageString.slideToStart,
      textStyle: Theme.of(context).textTheme.labelLarge,
      animationDuration: Duration(seconds: 1),
      // reversed: true,
      // sliderRotate: false,
      submittedIcon: SvgPicture.asset(AssetsImage.connetSVG, width: 25),
      innerColor: Theme.of(context).colorScheme.primary,
      outerColor: Theme.of(context).colorScheme.primaryContainer,
    );
  }
}
