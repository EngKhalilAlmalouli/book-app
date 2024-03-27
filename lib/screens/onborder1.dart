import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Onborder1 extends StatelessWidget {
  const Onborder1({super.key});

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
              GoRouter.of(context).go("/Onborder2");
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
              image: DecorationImage(image: AssetImage('assets/images/onborder1.png'),
              fit: BoxFit.fill,
              
              ),
            ),
            
            ),
            const SizedBox(height: 25),
            Container(
              height: 36,
              child:const Text('Only Books Can Help You',
              style: TextStyle(
                fontSize: 24,
              fontWeight: FontWeight.w700),),
        
            ),
            const SizedBox(height: 15),
            Container(
              height: 40,
              child:const Text('Books can help you to increase your knowledge and become more successfully.',
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