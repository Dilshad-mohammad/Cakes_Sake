import 'package:cakeApp/Signup/sign_up.dart';
import 'package:cakeApp/Signup/verify.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/img.png',
                    height: 325, width: 325),
                const Text('Login', style: TextStyle(fontSize: 27, color: Colors.white)),
                const Text('Please login to continue',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                const SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: Color(0xff1C1B1B),
                    filled: true,
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    prefixIcon: Icon(Icons.email_outlined),
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
                const SizedBox(height: 20),
          
                SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Verification(),
                          ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Colors.pinkAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text('Login', style: TextStyle(color: Colors.white),),
                    )
                ),
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account?', style: TextStyle(color: Colors.grey),),
                    TextButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()),
                      );
                    }, child: Text('SignUp', style: TextStyle(color: Colors.pinkAccent)))
                  ],
                ),
              ],
            ),
          ),
        ),
        );
    }
}
