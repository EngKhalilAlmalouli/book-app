// ignore_for_file: unused_import

import 'dart:js';

import 'package:books_app/screens/home_screens.dart';
import 'package:books_app/screens/login.dart';
import 'package:books_app/screens/my_library.dart';
import 'package:books_app/screens/onborder1.dart';
import 'package:books_app/screens/onborder2.dart';
import 'package:books_app/screens/onborder3.dart';
import 'package:books_app/screens/signup.dart';
import 'package:books_app/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
    //  home: Scaffold(
    //   body: HomeScreen(),
    //  ),
    routerConfig:_router ,
     
    );
  }
  final GoRouter _router=GoRouter(
    // initialLocation:"/" ,
    routes: [
    GoRoute(path: "/",builder: ((context, state) =>const Onborder1())),
    GoRoute(path: "/Onborder2",builder: ((context, state) =>const Onborder2())),
    GoRoute(path: "/Onborder3",builder: ((context, state) =>const Onborder3())),
    GoRoute(path: "/LogIn",builder: ((context, state) =>const LogIn())),
    GoRoute(path: "/SignUp",builder: ((context, state) =>const SignUp())),
    GoRoute(path: "/HomeScreen",builder: ((context, state) =>const HomeScreen())),
    GoRoute(path: "/MyLibrary",builder: ((context, state) =>const MyLibrary())),



  ]);
}
