import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class termConditions extends StatefulWidget {
  const termConditions({super.key});

  @override
  State<termConditions> createState() => _editPtermConditions();
}

class _editPtermConditions extends State<termConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Terms and Conditions",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w500)),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context); // Navigate back
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Where can I get Some?",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16)),
            ),
            Text(loremIpsum(words: 300), style: TextStyle(color: Colors.white))
          ],
        ));
  }
}
