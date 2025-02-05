import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget buildProductItem(String imageUrl, BuildContext context) {
  return Container(
    width: 180,
    margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
    decoration: BoxDecoration(
      color: const Color(0xffa24973),
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 6.0,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            height: 135,
            width: 180,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 14.0),
          child: Transform.translate(
            offset: const Offset(0, -30), // Shift the button 10 pixels up
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => ProductDetailPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffc79a3f),
                // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Rounded button
                ),
                minimumSize:
                const Size(double.infinity, 40), // Make button full width
              ),
              child: const Text(
                "ADD",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -35), // Shift the button 10 pixels up
          child: const Padding(
            padding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Vanilla Cake',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text(
                        '4.8 (1k+ Review)',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ]),
                    Icon(
                        Icons.favorite_border, color: Colors.white, size: 18),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}