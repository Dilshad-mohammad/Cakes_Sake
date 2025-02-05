import 'package:cakeApp/Signup/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CakeApp());
}

class CakeApp extends StatelessWidget {
  const CakeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
