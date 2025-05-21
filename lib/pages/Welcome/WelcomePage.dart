import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/svg.dart';
// ignore: unused_import
import 'package:messenger_app/config/Strings.dart';
// ignore: unused_import
import 'package:messenger_app/config/images.dart';
import 'package:messenger_app/pages/Welcome/Widgets/WelcomeBody.dart';
import 'package:messenger_app/pages/Welcome/Widgets/WelcomeFooterButton.dart';
import 'package:messenger_app/pages/Welcome/Widgets/WelcomeHeading.dart';
// ignore: unused_import
import 'package:slide_to_act/slide_to_act.dart';
// import 'package:sampark/Config/Images.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Welcomeheading(),
              Welcomebody(),
              Welcomefooterbutton(),
              
              ],
          ),
        ),
      ),
    );
  }
}

class WelcomeHeading {
}