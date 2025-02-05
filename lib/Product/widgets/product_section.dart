import 'package:cakeApp/Product/widgets/product_items.dart';
import 'package:flutter/material.dart';

class ProductsSectionHeading extends StatelessWidget {
  const ProductsSectionHeading ({super.key, required this.sectionTitle, required this.imageList});

  final String sectionTitle;
  final List<String> imageList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionTitle,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See all",
                  style: TextStyle(color: Colors.pinkAccent),
                ),
              ),
            ],
          ),
          Container(
            height: 260, // Adjust height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return buildProductItem(imageList[index], context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
