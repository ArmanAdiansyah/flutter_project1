import 'package:books_app/constants/styles.dart';
import 'package:books_app/models/book.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final Book book;
  //final Function()? onTap;
  //final String label;
  DetailPage(this.book);

  @override
  Widget build (BuildContext context) {

    header(){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(top: 25, bottom: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell (
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.chevron_left_rounded, size: 28)),
            ),
            Text(
              'Detail Buku',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Icon(Icons.bookmark_border, size: 28),
            ),

          ],
        ),
      );
    }

    bookImage(){
      return Container(
        height: 320,
        width: 216.89,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(book.image),
              fit: BoxFit.fill),
        ),
      );
    }

    description(){
      return Container(
        height: 75.6,
        margin: EdgeInsets.only(top:20),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 0.8,
          ),
          color: Colors.transparent, //Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Ulasan',
                  style: info_desc_TitleStyle,
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      size: 25,
                      color: aFont,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '${book.rating}',
                      style: rat_info_TitleStyle,
                    ),
                  ],
                ),
              ],
            ),
            VerticalDivider(
              color: Colors.black,
              thickness: 1,
            ),
            Column(
              children: [
                Text(
                  'Halaman',
                  style: info_desc_TitleStyle,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '${book.pages}',
                  style: rat_info_TitleStyle,
                ),
              ],
            ),
            VerticalDivider(
              color: Colors.black,
              thickness: 1,
            ),
            Column(
              children: [
                Text(
                  'Bahasa',
                  style: info_desc_TitleStyle,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'IND',
                  style: rat_info_TitleStyle,
                ),
              ],
            ),
          ],
        ),
      );
    }

    bookInfo() {
      return Container(
        margin: EdgeInsets.only(top:35, bottom: 50),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              book.title,
              style: descTitleStyle,
            ),
            Text(
              'oleh '+book.writer,
              style: desc_writer_TitleStyle,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              book.price.toString(),
              style: desc_price_TitleStyle,
            ),

            //Container(
            //margin: EdgeInsets.only(top:15),
            //padding: EdgeInsets.symmetric(vertical: 1.5),
            //decoration: BoxDecoration(
            //color: Color(0xffF3F3F3),
            //),
            //),

            description(),

            SizedBox(
              height: 25,
            ),

            Text(
              'Deskripsi Buku',
              style: desc_TitleStyle,
            ),
            SizedBox(
              height: 15,
            ),
            ExpandableText(
              book.description,
              style: expand_TitleStyle,
              expandText: ' Lihat Lebih Banyak',
              collapseText: ' Lihat Lebih Sedikit',
              maxLines: 3,
              linkColor: Color(0xff292C6D),
            ),
            Row(
              children: [
                SizedBox(
                  width: 105,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      floatingActionButton:  FloatingActionButton.extended(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,

        label: const Text('Buy It Now'),
        onPressed: () => launch(book.link),
      ),
      backgroundColor: Color(0xffF4F4F4),
      body: ListView(
        children: [
          Column(
            children: [
              header(),
              bookImage(),
              bookInfo(),
            ],
          ),
        ],
      ),

    );
  }
}