import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Onborder3 extends StatelessWidget {
  const Onborder3({super.key});

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
            onPressed: () { },
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
              image: DecorationImage(image: AssetImage('assets/images/onborder3.png'),
              fit: BoxFit.fill,
              
              ),
            ),
            
            ),
            const SizedBox(height: 25),
            Container(
              height: 36,
              child:const Text('Book Has Power To Chnage Everything',
              style: TextStyle(
                fontSize: 24,
              fontWeight: FontWeight.w700),),
        
            ),
            const SizedBox(height: 15),
            Container(
              height: 40,
              child:const Text('We have true friend in our life and the books is that. Book has power to chnage yourself and make you more valueable. ',
              style: TextStyle(fontSize: 14,
              fontWeight: FontWeight.w400
              ),),
        
            ),
            const  SizedBox(height: 25,),
            Container(
              height: 55,
              width: 230,
              child: ElevatedButton(onPressed: () {
                GoRouter.of(context).go("/LogIn");
              },
              child:const Text('Get Started Now',
              style: TextStyle(color: Colors.white),
              
              
              
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffDE7773),
                
              
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}