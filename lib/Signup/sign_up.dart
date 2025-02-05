import 'package:cakeApp/Signup/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Sign up.png', height: 325, width: 325),
            const Text('Create Account',
                style: TextStyle(fontSize: 27, color: Colors.white)),
            SizedBox(height: 5),
            Text('Please Fill your Details below',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Name',
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
                hintText: 'Email',
                fillColor: Color(0xff1C1B1B),
                filled: true,
                hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon:
                    Image.asset('assets/logos/Mail.png', height: 25, width: 25),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Phone',
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
                hintText: 'Password',
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                  child: Text(
                    'SignUp',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                )),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account!',
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Text('Login',
                        style: TextStyle(color: Colors.pinkAccent)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
