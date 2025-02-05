import 'package:flutter/material.dart';

Widget buildAppBarContent() {
  return Stack(
    children: [
      // Black background
      Container(
        height: 200, // Adjust the height as needed
        color: Colors.black,
      ), // Gradient background with curved bottom corners

      ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffab4362), Color(0xffa14976)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1600880292203-757bb62b4baf'),
                    radius: 25,
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dilshad Alam",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text("Sector-15, Noida, India",
                          style:
                          TextStyle(fontSize: 14, color: Colors.white70)),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                      icon: Icon(Icons.shopping_cart, color: Colors.white),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //      MaterialPageRoute(
                        //         builder: (context) => CartPage()));
                      }),
                  IconButton(
                      icon: Icon(Icons.notifications, color: Colors.white),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => NotificationPage()));
                      }),
                ],
              ),
              SizedBox(height: 16),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFcd8ea1), Color(0xFFc791ab)],
                      // Light gradient
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search...",
                            hintStyle: TextStyle(color: Colors.white70),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                            prefixIcon: Padding(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => WishListScreen()),
                                  // );
                                },
                                child: Icon(Icons.search, color: Colors.black),
                              ),
                            ),
                          ),
                          style: TextStyle(color: Colors.white), // Text color
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}