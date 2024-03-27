import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Onborder2 extends StatelessWidget {
  const Onborder2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
             icon:const Icon(Icons.arrow_back),
             ),
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).go("/Onborder3");
            },
             icon:const Text('Skip',
             style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
             ),
             ),
             ),
        ],
        
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              height: 498.92,
              width:437,
               decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/onborder2.png'),
              fit: BoxFit.fill,
              
              ),
            ),
            
            ),
            const SizedBox(height: 25),
            Container(
              height: 36,
              child:const Text('Learn Smartly',
              style: TextStyle(
                fontSize: 24,
              fontWeight: FontWeight.w700),),
        
            ),
            const SizedBox(height: 15),
            Container(
              height: 40,
              child:const Text('It’s 2022 and it’s time to learn every quickly and smartly. All books are storage in cloud and you can access all of them from your laptop or PC. ',
              style: TextStyle(fontSize: 14,
              fontWeight: FontWeight.w400
              ),),
        
            ),
          ],
        ),
      ),
    );
  }
}