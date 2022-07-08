import 'package:books_app/models/store.dart';
import 'package:books_app/pages/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'books_item.dart';

class BookListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Store store;

  BookListView(
      this.selected,
      this.callback,
      this.pageController,
      this.store
      );

  @override
  Widget build(BuildContext context) {
    final category = store.lists.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: PageView(
        physics: BouncingScrollPhysics(),
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: category.map((e) => ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) =>
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DetailPage(store.lists[category[selected]]![index])),
                    );
                  },
                  child: BooksItem(
                      store.lists[category[selected]]![index]),),
            separatorBuilder: (_, index) => SizedBox(height: 25),
            itemCount: store.lists[category[selected]]!.length)).toList(),
      ),

    );
  }
}