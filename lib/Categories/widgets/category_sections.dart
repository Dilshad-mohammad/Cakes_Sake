import 'package:flutter/material.dart';

import '../../Product/widgets/product_category_items.dart';


Widget buildCategorySection(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Shop by Occasions',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
        const SizedBox(height: 8),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildClickableCategoryItem(
                  context,
                  'https://images.unsplash.com/photo-1512697269742-5edb083f4beb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGJpcnRoZGF5JTIwY2FrZXxlbnwwfHwwfHx8MA%3D%3D',
                  'Birthday'),
              _buildClickableCategoryItem(
                  context,
                  'https://images.unsplash.com/photo-1604531825889-88dc0c7e37db?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHdlZGRpbmclMjBjYWtlfGVufDB8fDB8fHww',
                  'Wedding'),
              _buildClickableCategoryItem(
                  context,
                  'https://plus.unsplash.com/premium_photo-1664205766210-722dc2e43275?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YW5uZXZlcnNhcnklMjBjYWtlfGVufDB8fDB8fHww',
                  'Anniversary'),
              _buildClickableCategoryItem(
                  context,
                  'https://images.unsplash.com/photo-1613253009033-bad426154443?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHZhbGVudGluZSUyMGNha2V8ZW58MHx8MHx8fDA%3D',
                  'Valentine\'s'),
              _buildClickableCategoryItem(
                  context,
                  'https://images.unsplash.com/photo-1512697269742-5edb083f4beb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGJpcnRoZGF5JTIwY2FrZXxlbnwwfHwwfHx8MA%3D%3D',
                  'Birthday'),
              _buildClickableCategoryItem(
                  context,
                  'https://images.unsplash.com/photo-1604531825889-88dc0c7e37db?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHdlZGRpbmclMjBjYWtlfGVufDB8fDB8fHww',
                  'Wedding'),
              _buildClickableCategoryItem(
                  context,
                  'https://plus.unsplash.com/premium_photo-1664205766210-722dc2e43275?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YW5uZXZlcnNhcnklMjBjYWtlfGVufDB8fDB8fHww',
                  'Anniversary'),
              _buildClickableCategoryItem(
                  context,
                  'https://images.unsplash.com/photo-1613253009033-bad426154443?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHZhbGVudGluZSUyMGNha2V8ZW58MHx8MHx8fDA%3D',
                  'Valentine\'s'),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildClickableCategoryItem(BuildContext context, String imageUrl,
    String category){
  return GestureDetector(
    onTap: () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => WishListScreen()),
      // );
    },
    child: buildCategoryItem(imageUrl, category),
  );
}
