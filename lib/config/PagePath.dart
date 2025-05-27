// ignore: unused_import
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:messenger_app/pages/Auth/AuthPage.dart';
import 'package:messenger_app/pages/Chat/ChatPage.dart';
import 'package:messenger_app/pages/Home/HomePage.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => Authpage(), 
    transition: Transition.leftToRight,
    ),
    GetPage(
    name: "/Homepage",
    page: () => Homepage(), 
    transition: Transition.leftToRight,
    ),
    GetPage(
    name: "/Chatpage",
    page: () => Chatpage(), 
    transition: Transition.leftToRight,
    )
];