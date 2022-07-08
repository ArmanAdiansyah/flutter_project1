import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/styles.dart';

class StoreInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: EdgeInsets.only(top: 50, bottom: 0, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Explore Books',
              style: HeadingStyle,
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
      ),
    );
  }
}