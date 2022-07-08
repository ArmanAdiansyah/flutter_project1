import 'package:books_app/widgets/book_categories.dart';
import 'package:books_app/widgets/store_info.dart';
import 'package:flutter/material.dart';
import 'models/store.dart';
import 'widgets/book_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super (key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  var selected = 0;
  final pageController = PageController();
  final store = Store.generateStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StoreInfo(),
          BookList(selected,
                  (int index) {
                setState(() {
                  selected = index;
                });
                //pageController.jumpToPage(index);
              }, store),
          Expanded(
            child: BookListView(
              selected,
                  (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController,
              store,
            ),
          ),
          //Category(),
          //BookStaggeredGridView(),
        ],
      ),
    );
  }
}