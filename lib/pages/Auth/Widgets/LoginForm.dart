import 'package:flutter/material.dart';
import 'package:messenger_app/Widget/PrimaryButton.dart';

class Loginform extends StatelessWidget {
  const Loginform({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            prefixIcon: Icon(Icons.alternate_email_rounded
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: Icon(Icons.password_outlined
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            PrimaryButton(
              btnName: "Login",
              icon: Icons.lock_open_outlined,
              ontap: () {
                
              },
            ),
          ],
        )

      ],
    );
  }
}