// ignore_for_file: unused_import

import 'package:books_app/models/my_book.dart';
import 'package:books_app/screens/details_screen.dart';
import 'package:books_app/widgets/book_card.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading:const Image(image: AssetImage('assets/images/user.png')) ,
        title: Text('Hi,Zain!',
        style:TextStyle(
          fontSize: 18,
            fontWeight: FontWeight.w700,
        ) ,
        ),
      ),
      endDrawer: Drawer(
        

        child: SizedBox(
          height: 500,
          child: ListView(
            children: [
               SizedBox(
                height: 300,
                 child: UserAccountsDrawerHeader(
                             accountName: Text("Zain"),
                              accountEmail: Text(""),
                              currentAccountPicture: CircleAvatar(
                                radius: 64,
                               child: ClipOval(
                                 child: Image.asset("assets/images/user.png",width:125 , height: 134,),
                               ),
                              ),
                              
                              ),
               ),
              ListTile(
                title: Text("My library "),
                trailing: Icon(Icons.library_add),
                onTap: () {
                  GoRouter.of(context).go("/MyLibrary");
                  
                },
              ),
              ListTile(
                title: Text("Setting "),
                trailing: Icon(Icons.settings),
                onTap: () {
                  
                },
              ),
              ListTile(
                title: Text("Privacy"),
                trailing: Icon(Icons.privacy_tip_outlined),
                onTap: () {
                  
                },
                
              ),SizedBox(
                height: 280,
              ),

              ListTile(
                title: Text("Log out"),
                trailing: Icon(Icons.logout_outlined),
                onTap: () {
                  
                },
                
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
       
        SizedBox(height: 20,width: 50,),
        Row(
          
          children: [
            Container(
              padding: EdgeInsets.only(left: 50),
              width: 368,
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                            fillColor:  const Color(0XFFE7E7E7),
                            filled: true,
                            hintText: 'Search for books',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                                                ),
                                              ),
            ),
            SizedBox(width: 20,),
            
             Container(
                width: 64,
                height: 64,
                
                decoration:const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/searchtext.png'),
                    ),

                ),
              ),
          ],
          
        ),
        SizedBox(height: 22,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBookCategory(index: 0, name: 'all book'),
            _buildBookCategory(index: 1, name: 'Science'),
            _buildBookCategory(index: 2, name: 'History'),
            _buildBookCategory(index: 3, name: 'nthology'),
            _buildBookCategory(index: 4, name: 'Fantasy'),

          ],
        ),
        _buildallBooks(),

        ],

      ),
      



    );
  }

   _buildBookCategory({required int index, required String name}) =>
    GestureDetector(
      onTap: () => setState(() => isSelected = index),
      child: Container(
      width: 100,
      height: 40,
      margin:const EdgeInsets.only(top: 10,right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected == index? Colors.grey : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Text(name,
      style: TextStyle(color: Colors.black),),
      
        ),
    );


  _buildallBooks() => SizedBox(
    height: 500,
    child: GridView.builder(
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100/140),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyBooks.allBooks.length,
        itemBuilder: (context, index) {
          final allBooks = MyBooks.allBooks[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context, MaterialPageRoute(
                builder: (context)=> DetailsScreen(book: allBooks)
                ),
              ),
            child: BookCard(book: allBooks));
        },
        ),
  );


  // _buildscience() => SizedBox(
  //   height: 500,
  //   child: GridView.builder(
  //     gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount: 2,
  //       childAspectRatio: (100/140),
  //       crossAxisSpacing: 12,
  //       mainAxisSpacing: 12,
  //       ),
  //       scrollDirection: Axis.vertical,
  //       itemCount: MyBooks.allBooks.length,
  //       itemBuilder: (context, index) {
  //         final allBooks = MyBooks.allBooks[index];
  //         return BookCard(book: allBooks);
  //       },
  //       ),
  // );


_buildHeader(){
  return const DrawerHeader(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/images/backmylibrary.png'),
      fit: BoxFit.fill),
    ),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/user.png'),
          radius: 40,

        ),
        SizedBox(height: 10,),
        Text('Zain',
        style: TextStyle(
          fontSize: 18,
            fontWeight: FontWeight.w700,
        ) ,
        )
      ],
    )
    );
}


}