import 'package:flutter/material.dart';

class Chattile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String LastChat;
  final String LastTime;
  const Chattile({super.key, required this.imageUrl, required this.name, required this.LastChat, required this.LastTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(imageUrl, width: 60, height: 60),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    LastChat,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ],
          ),
          Text(LastTime, style: Theme.of(context).textTheme.labelMedium),
        ],
      ),
    );
  }
}
