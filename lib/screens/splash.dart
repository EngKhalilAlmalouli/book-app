import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        decoration:const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/Splash.png'),
          fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}