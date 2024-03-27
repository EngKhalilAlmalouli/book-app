import 'package:books_app/models/book.dart';
import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {

final Book book;

  const BookCard({super.key, required this.book});

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey.withOpacity(0.1)
      ),
      child: Column(
        children: [
       
          SizedBox(height: 250,
          width: 250,
          child: Image.asset(widget.book.bookimage,
          fit: BoxFit.cover,
          ),
          ),

          Text(
            widget.book.bookname,
            style: TextStyle(
              fontSize:16 ,
              fontWeight: FontWeight.w500 ,
              
            ),
          ),


           Text(
            widget.book.authorname,
            style: TextStyle(
              fontSize:13 ,
              fontWeight: FontWeight.w300 ,
              color: Color(0xffDE7773),
              
            ),
          )
          
        ],
      ),

      
    );
  }
}