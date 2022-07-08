import 'package:books_app/models/store.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Store store;
  BookList(this.selected, this.callback, this.store);

  @override
  Widget build(BuildContext context) {
    final category = store.lists.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => callback(index),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: selected == index ? Color(0xff292C6D) : Colors.white,
              ),
              child: Text(
                category[index],
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: selected == index ? FontWeight.bold : FontWeight.w500,
                      color: selected == index ? Colors.white : Color(0xff575757),
                    )),
              ),
            ),
          ),
          separatorBuilder: (_, index) => SizedBox(width: 22),
          itemCount: category.length),
    );
  }
}