import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:messenger_app/config/images.dart';

class Chatsbubble extends StatelessWidget {
  final String message;
  final bool isComming;
  final String time;
  final String status;
  final String imageUrl;
  const Chatsbubble({super.key, 
  required this.message,
  required this.isComming,
  required this.time,
  required this.status,
  required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: isComming ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Container(
                    padding:  EdgeInsets.all(10),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width / 1.3,
                    ),
                    decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: isComming ? BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(10),
                    ) : BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(0),
                    ),
                  ),
                    child: imageUrl=="" ? Text(message):
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(imageUrl)
                          ),
                        SizedBox(height: 10),
                        Text(message),
                      ],),     
           ),
           SizedBox(height: 10),
           Row(
              mainAxisAlignment: isComming ? MainAxisAlignment.start : MainAxisAlignment.end,
             children: [
               isComming ? Text(time,
               style: Theme.of(context).textTheme.labelMedium,
      
               ) :Row(
                children: [
                  Text(time,
                  style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(width: 10),
                  SvgPicture.asset(
                        AssetsImage.chatStatusSvg,
                          // ignore: deprecated_member_use
                          color: status == "read" ? Colors.green : Colors.grey,
                          width: 20,
                        ),
                  
               
                ]
                ,),
             ],
           )
        ],
      ),
    );
  }
}