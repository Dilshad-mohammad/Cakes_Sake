import 'package:cake_lake/Signup/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const cake_lake());
}

class cake_lake extends StatelessWidget {
  const cake_lake({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
