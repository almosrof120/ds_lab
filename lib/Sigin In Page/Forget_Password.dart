
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'Sigin_up_Profile.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String email = "";
  TextEditingController mailcontroller = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        "Password Reset Email has been sent !",
        style: TextStyle(fontSize: 20.0),
      )));
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          "No user found for that email.",
          style: TextStyle(fontSize: 20.0),
        )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 72, 149),
      body: Container(
        child: Column(
          children: [
            const Gap(
               70.0,
            ),
            Container(
              padding: const EdgeInsets.only(),
              alignment: Alignment.topCenter,
              child: const Text(
                "Password Recovery",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Gap(
               10.0,
            ),
            const Text(
              "Enter Your Email",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: Form(
                    key: _formkey,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ListView(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white70, width: 2.0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Email';
                                }
                                return null;
                              },
                              controller: mailcontroller,
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                      fontSize: 18.0, color: Colors.white),
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Colors.white70,
                                    size: 30.0,
                                  ),
                                  border: InputBorder.none),
                            ),
                          ),
                          const Gap(
                             40.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              if(_formkey.currentState!.validate()){
                                setState(() {
                                  email=mailcontroller.text;
                                });
                                resetPassword();
                              }
                            },
                            child: Container(
                              width: 140.h,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Center(
                                child: Text(
                                  "Send Email",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          const Gap(
                             50.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account?",
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                              const Gap(
                                 5.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const SiginUp()));
                                },
                                child: const Text(
                                  "Create",
                                  style: TextStyle(
                                      color: Color.fromARGB(225, 184, 166, 6),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}