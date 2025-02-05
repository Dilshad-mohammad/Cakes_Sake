import 'package:cakeApp/Signup/login.dart';
import 'package:flutter/material.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Edit Profile", style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w500)),
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
        padding: EdgeInsets.fromLTRB(16, 40, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset('assets/logos/2-2.png'),
              minRadius: 50,
              maxRadius: 70,
            ),
            const SizedBox(height: 40),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Johny Depp',
                fillColor: Color(0xff1C1B1B),
                filled: true,
                hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon: Icon(
                  Icons.person_2_outlined,
                  color: Colors.white,
                ),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'example111@gmail.com',
                fillColor: Color(0xff1C1B1B),
                filled: true,
                hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon: Image.asset('assets/logos/Mail.png',height: 25,width: 25),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: '+91-98765-43210',
                fillColor: Color(0xff1C1B1B),
                filled: true,
                hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon: Icon(
                  Icons.phone_android,
                  color: Colors.white,
                ),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: ''
                    '**********',
                fillColor: Color(0xff1C1B1B),
                filled: true,
                hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 20),
            Container(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  child: Text('Save Changes', style: TextStyle(color: Colors.white),),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                    },
                  style: ElevatedButton.styleFrom(
                  backgroundColor:  Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                )
            ),
           ],
        ),
      ),
    );
  }
}