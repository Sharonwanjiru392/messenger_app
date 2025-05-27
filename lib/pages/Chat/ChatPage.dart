import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:messenger_app/config/images.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child:Image.asset("assets/images/girl_pic.png"),

        ),
        title: Row(
          children: [
            Row(
              children: [
                Image.asset("assets/images/girl_pic.png",  width: 50,),
            
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("Sofia", style: Theme.of(context).textTheme.bodyLarge),
                    Text("Onlone", style: Theme.of(context).textTheme.labelSmall)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}