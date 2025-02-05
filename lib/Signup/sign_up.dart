import 'package:cake_lake/Signup/login.dart';
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
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Sign up.png', height: 325, width: 325),
            const Text('Create Account',
                style: TextStyle(fontSize: 27, color: Colors.white)),
            const SizedBox(height: 5),
            const Text('Please Fill your Details below',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Name',
                fillColor: const Color(0xff1C1B1B),
                filled: true,
                hintStyle: const TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon: const Icon(
                  Icons.person_2_outlined,
                  color: Colors.white,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Email',
                fillColor: const Color(0xff1C1B1B),
                filled: true,
                hintStyle: const TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon:
                    Image.asset('assets/logos/Mail.png', height: 25, width: 25),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Phone',
                fillColor: const Color(0xff1C1B1B),
                filled: true,
                hintStyle: const TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon: const Icon(
                  Icons.phone_android,
                  color: Colors.white,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Password',
                fillColor: const Color(0xff1C1B1B),
                filled: true,
                hintStyle: const TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'SignUp',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
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
                    child: const Text('Login',
                        style: TextStyle(color: Colors.pinkAccent)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
