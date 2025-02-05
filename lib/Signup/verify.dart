import 'package:cake_lake/Homepage/homepage.dart';
import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});
  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  String? _otp;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/OTP.png',
                  height: 274, width: 274),
              const Text('Verify Code', style: TextStyle(fontSize: 27, color: Colors.white)),
               const Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text('Please Enter the code Sent to your Phone',
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                   Text('+91-98765-43210',style: TextStyle(fontSize: 17, color: Colors.pinkAccent)),
                 ],
               ),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 40,
                      width: 50,
                      child: TextField(
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xff1C1B1B),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 40,
                      width: 50,
                      child: TextField(
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xff1C1B1B),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 40,
                      width: 50,
                      child: TextField(
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xff1C1B1B),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 40,
                      width: 50,
                      child: TextField(
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xff1C1B1B),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text("Didn't recieve OTP?",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white)),
              const SizedBox(height: 10),
              const Text('Resend Code',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.pinkAccent)),
              const SizedBox(height: 10),
              SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomepageScreen(),
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
            ],
          ),
        ),
      ),

    );
  }
}
