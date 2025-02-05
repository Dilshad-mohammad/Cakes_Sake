import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1578985545062-69928b1d9587',
  'https://plus.unsplash.com/premium_photo-1714662390433-443073660a26?q=80&w=1769&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1585601356265-5ffabba18b9c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1632134964015-9300cf2314cf?q=80&w=1769&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1469533667357-006056eaf780?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
];

Widget buildImageSlider() {
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