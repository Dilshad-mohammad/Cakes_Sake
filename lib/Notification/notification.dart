import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
        title: const Text(
          "Notification",
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              radius: 30,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 23,),
            ),
            title: const Row(
              children: [
                Text('Order Shipped',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 190),
                  child: Text('15/0/2024 | 6:35 pm',
                      style: TextStyle(
                          color: Colors.white38,
                          fontSize: 11,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            subtitle: Text(loremIpsum(words: 25),
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 11,
                    color: Colors.white38)),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              radius: 30,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 23,),
            ),
            title: const Row(
              children: [
                Text('Order Shipped',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 190),
                  child: Text('15/0/2024 | 6:35 pm',
                      style: TextStyle(
                          color: Colors.white38,
                          fontSize: 11,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            subtitle: Text(loremIpsum(words: 25),
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 11,
                    color: Colors.white38)),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              radius: 30,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 23,),
            ),
            title: const Row(
              children: [
                Text('Order Shipped',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 190),
                  child: Text('15/0/2024 | 6:35 pm',
                      style: TextStyle(
                          color: Colors.white38,
                          fontSize: 11,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            subtitle: Text(loremIpsum(words: 25),
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 11,
                    color: Colors.white38)),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              radius: 30,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 23,),
            ),
            title: const Row(
              children: [
                Text('Order Shipped',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 190),
                  child: Text('15/0/2024 | 6:35 pm',
                      style: TextStyle(
                          color: Colors.white38,
                          fontSize: 11,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            subtitle: Text(loremIpsum(words: 25),
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 11,
                    color: Colors.white38)),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              radius: 30,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 23,),
            ),
            title: const Row(
              children: [
                Text('Order Shipped',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 190),
                  child: Text('15/0/2024 | 6:35 pm',
                      style: TextStyle(
                          color: Colors.white38,
                          fontSize: 11,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            subtitle: Text(loremIpsum(words: 25),
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 11,
                    color: Colors.white38)),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              radius: 30,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 23,),
            ),
            title: const Row(
              children: [
                Text('Order Shipped',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 190),
                  child: Text('15/0/2024 | 6:35 pm',
                      style: TextStyle(
                          color: Colors.white38,
                          fontSize: 11,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            subtitle: Text(loremIpsum(words: 25),
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 11,
                    color: Colors.white38)),
          ),
        ],
      ),
    );
  }
}
