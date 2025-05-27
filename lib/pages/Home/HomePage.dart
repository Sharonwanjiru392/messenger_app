import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:messenger_app/config/Strings.dart';
import 'package:messenger_app/config/images.dart';
import 'package:messenger_app/pages/Home/Widget/ChatsList.dart';
import 'package:messenger_app/pages/Home/Widget/TabBar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          title: Text(
            AppString.appName,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              AssetsImage.appIconSVG,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
           bottom: myTabBar(tabController, context),
           
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/contactPage");
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
         body: Padding(
           padding: const EdgeInsets.all(10),
           child: TabBarView(
            controller: tabController,
            children: [
           Chatslist(),
            ListView(children: [
              ListTile(
                title: Text("Name Sharon"),
              )
            ],
            ),
            ListView(children: [
              ListTile(
                title: Text("Name Sharon"),
              )
            ],
            ),
           ]
                 ),
         ),
      ),
    );
  }
}
