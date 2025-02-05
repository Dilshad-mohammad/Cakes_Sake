import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1578985545062-69928b1d9587',
    'https://plus.unsplash.com/premium_photo-1714662390433-443073660a26?q=80&w=1769&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1585601356265-5ffabba18b9c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1632134964015-9300cf2314cf?q=80&w=1769&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1469533667357-006056eaf780?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
        title: const Text("Products", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, childAspectRatio: 1.0),
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            children: [
            Container(
            width: 180,
            margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            decoration: BoxDecoration(
              color: Color(0xffa24973),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
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
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                  child: CachedNetworkImage(
                    imageUrl: 'img.png',
                    height: 135,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 14.0),
                  child: Transform.translate(
                    offset: Offset(0, -30), // Shift the button 10 pixels up
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ProductDetailPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffc79a3f),
                        // Button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Rounded button
                        ),
                        minimumSize:
                        Size(double.infinity, 40), // Make button full width
                      ),
                      child: Text(
                        "ADD",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -35), // Shift the button 10 pixels up
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
                            Icon(Icons.favorite_border, color: Colors.white, size: 18),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
            ],
          );
        },
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1578985545062-69928b1d9587',
  'https://plus.unsplash.com/premium_photo-1714662390433-443073660a26?q=80&w=1769&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1585601356265-5ffabba18b9c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1632134964015-9300cf2314cf?q=80&w=1769&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1469533667357-006056eaf780?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
];

Widget _buildImageSlider() {
  return CarouselSlider(
    options: CarouselOptions(
      height: 200.0,
      autoPlay: true,
      enlargeCenterPage: true,
    ),
    items: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        // Adjust the radius as needed
        child: Image.asset(
          'assets/images/image_banner.jpg',
          fit: BoxFit.cover,
          width: 1000,
        ),
      ),
      ...imgList
          .map((item) => ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        // Same radius for consistency
        child: CachedNetworkImage(
          imageUrl: item,
          fit: BoxFit.cover,
          width: 1000,
        ),
      ))
          .toList(),
    ],
  );
}

Widget _buildProductItem(String imageUrl, BuildContext context) {
  return Container(
    width: 180,
    margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
    decoration: BoxDecoration(
      color: Color(0xffa24973),
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
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
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
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
            offset: Offset(0, -30), // Shift the button 10 pixels up
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => ProductDetailPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffc79a3f),
                // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Rounded button
                ),
                minimumSize:
                Size(double.infinity, 40), // Make button full width
              ),
              child: Text(
                "ADD",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0, -35), // Shift the button 10 pixels up
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
                    Icon(Icons.favorite_border, color: Colors.white, size: 18),
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

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height - 20)
      ..quadraticBezierTo(
          size.width / 2, size.height, size.width, size.height - 20)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

