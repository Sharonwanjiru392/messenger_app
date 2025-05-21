import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:messenger_app/config/Strings.dart';
import 'package:messenger_app/config/images.dart';

class Welcomebody extends StatelessWidget {
  const Welcomebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset("assets/images/boy_pic.png"),
                  SvgPicture.asset(AssetsImage.connetSVG),
                  Image.asset("assets/images/girl_pic.png"),
                ],
                ),
              SizedBox(height: 40),
                Text(
                  WelcomePageString.nowYourAre, 
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                 SizedBox(height: 20),
                Text(
                  WelcomePageString.connected, 
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                 SizedBox(height: 30),
                 Text(
                  WelcomePageString.discription, 
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
    ],);
  }
}