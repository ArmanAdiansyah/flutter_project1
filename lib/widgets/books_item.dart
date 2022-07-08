import 'package:books_app/constants/styles.dart';
import 'package:books_app/models/book.dart';
import 'package:flutter/material.dart';

class BooksItem extends StatelessWidget {
  final Book book;
  BooksItem(this.book);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 169.45,
            height: 250,
            child: Image.asset(book.image, fit: BoxFit.fitHeight),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 20,
                left: 0,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.title,
                    style: subsTitleStyle,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    book.writer,
                    style: writerTitleStyle,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: aFont,
                      ),
                      Text('${book.rating}',
                        style: ratingTitleStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),

      //child: Padding(
      //padding: EdgeInsets.symmetric(horizontal: 20),
      //),
    );
  }
}