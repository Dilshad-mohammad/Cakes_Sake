import 'package:cakeApp/Signup/sign_up.dart';
import 'package:cakeApp/Signup/verify.dart';
import 'package:flutter/material.dart';

class addShippingAddress extends StatefulWidget {
  const addShippingAddress({super.key});

  @override
  State<addShippingAddress> createState() => _addShippingAddressState();
}

class _addShippingAddressState extends State<addShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Add Shipping Address",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Text('Name',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15)),
                  Text('*',style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.w600,fontSize: 15),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0,bottom: 15),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    fillColor: Color(0xff1C1B1B),
                    filled: true,
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text('Phone Number',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15)),
                  Text('*',style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.w600,fontSize: 15),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0,bottom: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    fillColor: Color(0xff1C1B1B),
                    filled: true,
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('+ Add New Shipping Address',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.w400,
                        fontSize: 16)),
              ),
              const SizedBox(height: 10),
              // Row(
              //   children: [
              //     Row(
              //       children: [
              //         Text('City',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15)),
              //         Text('*',style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.w600,fontSize: 15),)
              //       ],
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(top: 15.0,bottom: 15),
              //       child: TextField(
              //         keyboardType: TextInputType.text,
              //         style: const TextStyle(color: Colors.white),
              //         decoration: InputDecoration(
              //           hintText: 'Enter City',
              //           fillColor: Color(0xff1C1B1B),
              //           filled: true,
              //           hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
              //           border:
              //           OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
              //         ),
              //       ),
              //     ),
              //     Row(
              //       children: [
              //         Text('City',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15)),
              //         Text('*',style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.w600,fontSize: 15),)
              //       ],
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(top: 15.0,bottom: 15),
              //       child: TextField(
              //         keyboardType: TextInputType.text,
              //         style: const TextStyle(color: Colors.white),
              //         decoration: InputDecoration(
              //           hintText: 'Enter City',
              //           fillColor: Color(0xff1C1B1B),
              //           filled: true,
              //           hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
              //           border:
              //           OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text('City',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15)),
                  Text('*',style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.w600,fontSize: 15),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0,bottom: 15),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Enter City',
                    fillColor: Color(0xff1C1B1B),
                    filled: true,
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text('Address',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15)),
                  Text('*',style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.w600,fontSize: 15),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0,bottom: 15),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'House no., Building',
                    fillColor: Color(0xff1C1B1B),
                    filled: true,
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text('LandMark',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15)),
                  Text('*',style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.w600,fontSize: 15),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0,bottom: 15),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Street Name, Road, Area, Loacality',
                    fillColor: Color(0xff1C1B1B),
                    filled: true,
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                  ),
                ),
              ),

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
