import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration:   BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/vector1.png'),
          fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(height: 20,),
            Positioned(
              top: 50,
              left: 20,
              child: Container(
                width: 120,
                height: 127,
                decoration:const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/book.png'),
                    ),

                ),
              ),
              ),
              SizedBox(height: 0.1,),

              Container(
              margin: const EdgeInsets.only(left: 200,),
              child: const Text('Sign in',style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w400
              ),),
            ),
           const SizedBox(height: 50,),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 100,),
                      Container(
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                        fillColor:  const Color(0XFFD7F0F7),
                        filled: true,
                        hintText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                                            ),
                                          ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                        fillColor:  const Color(0XFFD7F0F7),
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                                            ),
                                          ),
                      ),
                      Row(
                      children: [
                        Checkbox(
                      value: isChecked,
                       onChanged: (Value){
                        setState(() {
                          isChecked = Value!;
                        },);
                        
                       },
                       ),
                       const  SizedBox(width: 5.5),
                       const Text('remember me  ',style: TextStyle(
                        fontSize: 10,
                       ),
                        ),
                         
                ],),
                  ],
                ),
              ),
            ),
            const  SizedBox(height: 25,),
            Container(
              height: 55,
              width: 230,
              child: ElevatedButton(onPressed: () {
                GoRouter.of(context).go("/HomeScreen");
              },
              child:const Text('sign In',
              style: TextStyle(color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w400),
              
              
              
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffDE7773),
                
              
              ),
              ),
            ),
            Text('Dont have an account?', style: TextStyle(fontSize: 15,),),
                IconButton(
            onPressed: () {
              GoRouter.of(context).go("/SignUp");
            },
             icon:const Text('Sign up',),
             ),
          ],
          
        ),

        
      ),
    );
  }
}