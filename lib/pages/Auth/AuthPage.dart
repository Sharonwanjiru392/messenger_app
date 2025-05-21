import 'package:flutter/material.dart';
import 'package:messenger_app/pages/Auth/Widgets/AuthPageBody.dart';
// ignore: unused_import
import 'package:messenger_app/pages/Welcome/WelcomePage.dart';
import 'package:messenger_app/pages/Welcome/Widgets/WelcomeHeading.dart';

class Authpage extends StatelessWidget {
  const Authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(20),
          child:  SingleChildScrollView(
            child: Column(
              children: [
                Welcomeheading(),
                SizedBox(
                  height: 40,
            
                ),
                Authpagebody(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}