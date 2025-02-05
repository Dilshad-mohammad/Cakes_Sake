import 'package:flutter/material.dart';

Widget buildCategoryItem(String imageUrl, String categoryName) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 0),
    width: 80,
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 30,
        ),
        SizedBox(height: 8),
        Text(
          categoryName,
          style: TextStyle(fontSize: 14, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}