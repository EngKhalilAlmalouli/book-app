// ignore_for_file: unused_import

import 'package:books_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:books_app/widgets/book_card.dart';


class DetailsScreen extends StatelessWidget {
final Book book;
  const DetailsScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0XFF171B36),
        actions: [
          IconButton(
                     onPressed: () {},
                      icon:const Icon(Icons.list,
                      color: Colors.white,
                      size: 35,),
           ),
        ],
      ),

      body: Column(
        children: [
          Container(
            height: 250,
            color:const Color(0xFF171B36),
            child: Row(
              children: [
                Container(
                  width: 250,
                  height: 250,
                  child: Image.asset(book.bookimage,fit: BoxFit.cover,),

                ),
               const SizedBox(height: 20,width: 20,),
               Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 185,
                      height: 21,
                      child: Text(book.bookname,
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    Container(
                      width: 257,
                      height: 150,
                      child: Text(book.bookdescription,
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                    ),
                 const   SizedBox(height: 10),
                Container(
                  width: 200,
                      height: 15,

                  child:const Row(
                    
                     children: [
                      
                      Image(image: AssetImage("assets/images/stars.png",),),
                   
                     ],
                  
                  ),
                ),
                
                  ],
                ),

               ),
              ],

            ),
          ),
          const SizedBox(height: 0.5,),
                Container(
                  height: 136,
                  // width: 1000,
                  decoration:const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/wrap.png',),fit: BoxFit.cover)
                  ),
                  child:  Row(
                    children: [
                      const SizedBox(width: 30,),
                       Container(
                       child: ElevatedButton(
                        onPressed: (){
                          showModalBottomSheet(
                            backgroundColor: Color(0XFFD38D8A),
                            context: context,
                             builder: (BuildContext context) {
                              return SizedBox(height: 400,
                              width: 373,
                              child:Column(
                                    
                                    children: [
                                      SizedBox(height: 30,),


                                      Container(
                          width:242,
                          height: 47.57,
                          child: Text("Want to buy the book ?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:21 ,
                           
                            color: Colors.white,
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.only(left:250,top: 50),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image:const DecorationImage(image: AssetImage('assets/images/buybottomsheet.png'),
                            fit: BoxFit.fill),
                          ),
                        ),
                        
                        Row(
                          children: [
                            SizedBox(width: 30,),
                            
                            Container(
                    width: 117,
                    height: 40,
                    child: ElevatedButton(onPressed: () {
              
            },
            
            child:const Text('Yes',
            style: TextStyle(color: Colors.white),
            
            
            
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0XFF23284F),
              

            ),
            ),
                   ),
                   SizedBox(width: 30,),
                   Container(
                    width: 117,
                    height: 40,
                    child: ElevatedButton(onPressed: () {
              
            },
            
            child:const Text('Cancel',
            style: TextStyle(color: Colors.black),
            
            
            
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              

            ),
            ),
                   )

                            
                          ],
                        )
                        

                               
                        

                   

                                    ],
                                  ),);

                             });
                        },
                         child: Image(image: AssetImage('assets/images/buy.png'),fit: BoxFit.cover,)
                         ),
                        
                        
                        

                        
                       ),
                       const SizedBox(width: 30,),
                       Container(
                       child: ElevatedButton(
                        onPressed: (){
                          showModalBottomSheet(
                              backgroundColor: Color(0XFFD38D8A),
                              context: context,
                               builder: (BuildContext context) {
                                return SizedBox(
                                  height: 342,
                                  width: 373,
                                  child: Column(
                                    
                                    children: [
                                      Container(margin: EdgeInsets.only(left:250,top: 50),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image:const DecorationImage(image: AssetImage('assets/images/rentbottomsheet.png'),
                            fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(height: 20,),


                        Container(
                          width:242,
                          height: 47.57,
                          child: TextField(
                            
                    obscureText: false,
                     decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      
                      hintText: 'Duration of rental ..',
                      border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                        ),

                   SizedBox(height: 50,),

                   Container(
                    width: 284,
                    height: 38.83,
                    child: ElevatedButton(onPressed: () {
              
            },
            
            child:const Text('Send',
            style: TextStyle(color: Colors.white),
            
            
            
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0XFF23284F),
              

            ),
            ),
                   )

                                    ],
                                  ),
                                  

                                );
                               },
                               );
                        },
                         child: Image(image: AssetImage('assets/images/rent.png'),fit: BoxFit.cover,)
                         ),
                        
                       ),

                       const SizedBox(width: 20,),
                       Container(
                       child: ElevatedButton(
                        onPressed: (){},
                         child: Image(image: AssetImage('assets/images/swap.png'),fit: BoxFit.cover,)
                         ),
                        
                       ),
                     

                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(right: 400),
                  height:23 ,
                  width: 150,
                  child: Text('About The Book',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),),
                ),
                SizedBox(height: 10,),
                Container(
                  // margin: EdgeInsets.only(right: 400),
                  height:100 ,
                  width: 362,
                  child: Text(book.bookdescription,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400
                  ),),
                ),
                Container(
                  width: 364,
                  height: 205,
                  child: Image(image: AssetImage('assets/images/ad.png')),
                )
          

        ],
      ),
    );
  }
}