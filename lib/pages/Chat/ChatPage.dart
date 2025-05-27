import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:messenger_app/config/images.dart';
import 'package:messenger_app/pages/Chat/Widget/ChatsBubble.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:messenger_app/config/images.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child:Image.asset("assets/images/girl_pic.png"),

        ),
        title: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("Sofia", style: Theme.of(context).textTheme.bodyLarge),
                    Text("Onlone", style: Theme.of(context).textTheme.labelSmall
                    )
                  ],
                ),
                actions: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.phone,),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.video_call,),),
                ],
            ),


            bottomNavigationBar: 
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: 
            Row(
              children: [
                SvgPicture.asset(AssetsImage.chatMicSvg),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(filled: false,
                    hintText: "write message..."
                    ),
                  ),
                  

                ),
                SvgPicture.asset(AssetsImage.chatGallarySvg),
                SvgPicture.asset(AssetsImage.chatSendSvg),

              ],
              ),
              ),

      body: Padding(
        padding: const EdgeInsets.all(10),

        child: ListView(
          children: [
           Chatsbubble(
            message: "Thanks for sharing your Login.js, Bunny bear 🧸💻",
            isComming: true,
            time: "11:00 AM",
            status: "read",
            imageUrl: ""
           ),
          Chatsbubble(
            message: "Thanks for sharing your Login.js, Bunny bear 🧸💻",
            isComming: false,
            time: "11:00 AM",
            status: "read",
            imageUrl: "https://blog.solguruz.com/wp-content/uploads/2022/05/What-makes-flutter-ideal-for-Hybrid-app-development-and-why-choose-Flutter-for-hybrid-apps_.png"
            ),
            Chatsbubble(
            message: "Thanks for sharing your Login.js, Bunny bear 🧸💻",
            isComming: true,
            time: "11:00 AM",
            status: "read",
            imageUrl: "https://blog.solguruz.com/wp-content/uploads/2022/05/What-makes-flutter-ideal-for-Hybrid-app-development-and-why-choose-Flutter-for-hybrid-apps_.png"
            ),
            Chatsbubble(
            message: "Thanks for sharing your Login.js, Bunny bear 🧸💻",
            isComming: true,
            time: "11:00 AM",
            status: "read",
            imageUrl: ""
           ),
          ],
        ),
      ),
    );
  }
}