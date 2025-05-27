import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger_app/pages/Home/Widget/ChatTile.dart';

class Chatslist extends StatelessWidget {
  const Chatslist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed("/Chatpage");
          },
          child: Chattile(
            imageUrl: "assets/images/girl_pic.png",
            name: "Sofia",
            LastChat: "Hey, how are you?",
            LastTime: "8:30 pm",
          ),
        ),
        Chattile(
          imageUrl: "assets/images/boy_pic.png",
          name: "Liam",
          LastChat: "Let's catch up tomorrow.",
          LastTime: "7:15 pm",
        ),
      ],
    );
  }
}
