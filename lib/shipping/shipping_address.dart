import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import 'add_ship_add.dart';

class shippingAddress extends StatefulWidget {
  const shippingAddress({super.key});

  @override
  State<shippingAddress> createState() => _shippingAddressState();
}

class _shippingAddressState extends State<shippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Shipping Address",
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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading:
                  const Icon(Icons.location_on_outlined, color: Colors.pinkAccent),
              subtitle: Text(
                loremIpsum(words: 15),
                style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 11,
                    fontWeight: FontWeight.w300),
              ),
              title: const Text('Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.56)),
              trailing: IconButton(
                icon:
                    const Icon(Icons.circle_outlined, color: Colors.pinkAccent),
                onPressed: () {
                  setState(() {
                    Colors.pinkAccent;
                  });
                },
              ),
            ),
            ListTile(
              leading:
                  const Icon(Icons.location_on_outlined, color: Colors.pinkAccent),
              title: const Text('Home2',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.56)),
              subtitle: Text(
                loremIpsum(words: 15),
                style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 11,
                    fontWeight: FontWeight.w300),
              ),
              trailing: IconButton(
                icon:
                    const Icon(Icons.circle_outlined, color: Colors.pinkAccent),
                onPressed: () {
                  setState(() {
                    Colors.pinkAccent;
                  });
                },
              ),
            ),
            ListTile(
              leading:
                  const Icon(Icons.location_on_outlined, color: Colors.pinkAccent),
              subtitle: Text(
                loremIpsum(words: 15),
                style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 11,
                    fontWeight: FontWeight.w300),
              ),
              title: const Text('Office',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.56)),
              trailing: IconButton(
                icon:
                    const Icon(Icons.circle_outlined, color: Colors.pinkAccent),
                onPressed: () {
                  setState(() {
                    Colors.pinkAccent;
                  });
                },
              ),
            ),
            ListTile(
              leading:
                  const Icon(Icons.location_on_outlined, color: Colors.pinkAccent),
              subtitle: Text(
                loremIpsum(words: 15),
                style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 11,
                    fontWeight: FontWeight.w300),
              ),
              title: const Text("Parent's House",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.56)),
              trailing: IconButton(
                icon:
                    const Icon(Icons.circle_outlined, color: Colors.pinkAccent),
                onPressed: () {
                  setState(() {
                    Colors.pinkAccent;
                  });
                },
              ),
            ),
            ListTile(
              leading:
                  const Icon(Icons.location_on_outlined, color: Colors.pinkAccent),
              subtitle: Text(
                loremIpsum(words: 15),
                style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 11,
                    fontWeight: FontWeight.w300),
              ),
              title: const Text("Hostel",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.56)),
              trailing: IconButton(
                icon:
                    const Icon(Icons.circle_outlined, color: Colors.pinkAccent),
                onPressed: () {
                  setState(() {
                    Colors.pinkAccent;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 250,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const addShippingAddress(),
                    ));
              },
              child: const Text('+ Add New Shipping Address',
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w400,
                      fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
