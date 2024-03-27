import 'package:flutter/material.dart';

class MyLibrary extends StatefulWidget {
  const MyLibrary({super.key});

  @override
  State<MyLibrary> createState() => _MyLibraryState();
}

class _MyLibraryState extends State<MyLibrary> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      //  height: 150,
      width: 787,
      decoration:const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/backmylibrary.png'),
        fit: BoxFit.fill
        ),),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height:150 ,
                  width: 180.72,
                  child: Image(image: AssetImage("assets/images/bookmylibrary.png"),)),

                  Text("My library ",style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400
                  ),),
              ],
            ),
            SizedBox(height: 10,),
            Container( 
              color: Color(0XFFFFFFFF),
              height:135 ,
              width: 450,
              child: Row(
                children: [
                  const Image(image: AssetImage("assets/images/thepsychlologyofmoney.png",),
                  ),
                

              Column(
                children: [
                  SizedBox(height: 10,),
                  Text("Laws of UX: Design Principles\nfor Persuasive and Ethical\Products"),
                  SizedBox(height: 0.5,),
                  Text("Jon Yablonski"),
                  SizedBox(height: 0.5,),
                  Text("4.8 | Based on 2k Reviews"),
                  SizedBox(height: 0.5,),
                  Text("45.87"),

                ],
                
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  SizedBox(height: 30),
                            
                            Container(
                    width: 78,
                    height: 26,
                    child: ElevatedButton(onPressed: () {
              
            },
            
            child:const Text('Grab Now',
            style: TextStyle(fontSize: 10,
            color: Colors.white),
            
            
            
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0XFFDE7773),
              

            ),
            ),
            
                   ),
                   SizedBox(height: 30,),
                   Container(
                    width: 78,
                    height: 26,
                    child: ElevatedButton(onPressed: () {
              
            },
            
            child:const Text('Learn More',
            style: TextStyle(
              fontSize: 10,
              color: Colors.black
            ),
            
            
            
            ),
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.white,
              

            ),
            ),
                   ),
                   
                   

                   
                ],
              )
                ],
              ),

            ),
            SizedBox(height: 10,),
            Container( 
              color: Color(0XFFFFFFFF),
              height:135 ,
              width: 450,
              child: Row(
                children: [
                  const Image(image: AssetImage("assets/images/steal.png",),
                  ),
                

              Column(
                children: [
                  SizedBox(height: 10,),
                  Text("The Steal Like An Artist                 "),
                  SizedBox(height: 0.5,),
                  Text("Austin Kleon"),
                  SizedBox(height: 0.5,),
                  Text("5.0 | Based on 23k Reviews"),
                  SizedBox(height: 0.5,),
                  Text("45.87"),

                ],
                
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  SizedBox(height: 30),
                            
                            Container(
                    width: 78,
                    height: 26,
                    child: ElevatedButton(onPressed: () {
              
            },
            
            child:const Text('Grab Now',
            style: TextStyle(fontSize: 10,
            color: Colors.white),
            
            
            
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0XFFDE7773),
              

            ),
            ),
            
                   ),
                   SizedBox(height: 30,),
                   Container(
                    width: 78,
                    height: 26,
                    child: ElevatedButton(onPressed: () {
              
            },
            
            child:const Text('Learn More',
            style: TextStyle(
              fontSize: 10,
              color: Colors.black
            ),
            
            
            
            ),
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.white,
              

            ),
            ),
                   ),
                 
                ],
              )
                ],
              ),

            ),
            SizedBox(height: 10,),
            Container( 
              color: Color(0XFFFFFFFF),
              height:135 ,
              width: 450,
              child: Row(
               
                children: [
                  const Image(image: AssetImage("assets/images/million.png",),
                  ),
                
              
              Column(
                children: [
                  SizedBox(height: 10,),
                  Text("A Million To One ",),
                  SizedBox(height: 0.5,),
                  Text("Tony Faggioli"),
                  SizedBox(height: 0.5,),
                  Text("5.0 | Based on 23k Reviews"),
                  SizedBox(height: 0.5,),
                  Text("45.87"),
              
                ],
                
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  SizedBox(height: 30,width: 150,),
                            
                            Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: Container(
                                                  width: 78,
                                                  height: 26,
                                                  child: ElevatedButton(onPressed: () {
                                            
                                                        },
                                                        
                                                        child:const Text('Grab Now',
                                                        style: TextStyle(fontSize: 10,
                                                        color: Colors.white),
                                                        
                                                        
                                                        
                                                        ),
                                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(0XFFDE7773),
                                            
                                            
                                                        ),
                                                        ),
                                                        
                                                 ),
                            ),
                   SizedBox(height: 30,),
                   Padding(
                     padding: const EdgeInsets.only(left: 90),
                     child: Container(
                      width: 78,
                      height: 26,
                      child: ElevatedButton(onPressed: () {
                                   
                            },
                            
                            child:const Text('Learn More',
                            style: TextStyle(
                                   fontSize: 10,
                                   color: Colors.black
                            ),
                            
                            
                            
                            ),
                            style: ElevatedButton.styleFrom(
                                   // backgroundColor: Colors.white,
                                   
                                   
                            ),
                            ),
                     ),
                   ),
                 
                ],
              )
                ],
              ),

            ),
            SizedBox(height: 10,),
            Container( 
              color: Color(0XFFFFFFFF),
              height:135 ,
              width: 450,
              child: Row(
                children: [
                  const Image(image: AssetImage("assets/images/ikigai.png",),
                  ),
                

              Column(
                children: [
                  SizedBox(height: 10,),
                  Text("IKIGAI                 "),
                  SizedBox(height: 0.5,),
                  Text("Ichigo Ichie"),
                  SizedBox(height: 0.5,),
                  Text("5.0 | Based on 23k Reviews"),
                  SizedBox(height: 0.5,),
                  Text("45.87"),

                ],
                
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  SizedBox(height: 30),
                            
                            Padding(
                              padding: const EdgeInsets.only(left: 47),
                              child: Container(
                                                  width: 78,
                                                  height: 26,
                                                  child: ElevatedButton(onPressed: () {
                                            
                                          },
                                          
                                          child:const Text('Grab Now',
                                          style: TextStyle(fontSize: 10,
                                          color: Colors.white),
                                          
                                          
                                          
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(0XFFDE7773),
                                            
                              
                                          ),
                                          ),
                                          
                                                 ),
                            ),
                   SizedBox(height: 30,),
                   Padding(
                     padding: const EdgeInsets.only(left: 45),
                     child: Container(
                      width: 78,
                      height: 26,
                      child: ElevatedButton(onPressed: () {
                                   
                                 },
                                 
                                 child:const Text('Learn More',
                                 style: TextStyle(
                                   fontSize: 10,
                                   color: Colors.black
                                 ),
                                 
                                 
                                 
                                 ),
                                 style: ElevatedButton.styleFrom(
                                   // backgroundColor: Colors.white,
                                   
                     
                                 ),
                                 ),
                     ),
                   ),
                 
                ],
              )
                ],
              ),

            ),


            
            
            
            
            
             
            
          ],
          
          

        ),
        

    );
  }
}