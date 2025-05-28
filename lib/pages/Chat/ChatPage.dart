import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:messenger_app/config/images.dart';
import 'package:messenger_app/pages/Chat/Widget/ChatsBubble.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset("assets/images/girl_pic.png"),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sofia", style: Theme.of(context).textTheme.bodyLarge),
            Text("Online", style: Theme.of(context).textTheme.labelSmall),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: const [
            Chatsbubble(
              message: "Thanks for sharing your Login.js, Bunny bear 🧸💻",
              isComming: true,
              time: "11:00 AM",
              status: "read",
              imageUrl: "",
            ),
            Chatsbubble(
              message: "Thanks for sharing your Login.js, Bunny bear 🧸💻",
              isComming: false,
              time: "11:00 AM",
              status: "read",
              imageUrl:
                  "https://blog.solguruz.com/wp-content/uploads/2022/05/What-makes-flutter-ideal-for-Hybrid-app-development-and-why-choose-Flutter-for-hybrid-apps_.png",
            ),
            Chatsbubble(
              message: "Thanks for sharing your Login.js, Bunny bear 🧸💻",
              isComming: true,
              time: "11:00 AM",
              status: "read",
              imageUrl:
                  "https://blog.solguruz.com/wp-content/uploads/2022/05/What-makes-flutter-ideal-for-Hybrid-app-development-and-why-choose-Flutter-for-hybrid-apps_.png",
            ),
            Chatsbubble(
              message: "Thanks for sharing your Login.js, Bunny bear 🧸💻",
              isComming: true,
              time: "11:00 AM",
              status: "read",
              imageUrl: "",
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Row(
            children: [
              SvgPicture.asset(AssetsImage.chatMicSvg),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: "Write a message...",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SvgPicture.asset(AssetsImage.chatGallarySvg),
              const SizedBox(width: 10),
              SvgPicture.asset(AssetsImage.chatSendSvg),
            ],
          ),
        ),
      ),
    );
  }
}
