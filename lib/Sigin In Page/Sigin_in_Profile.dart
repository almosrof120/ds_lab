import 'package:ds_lab/Google%20Authrntication/Google_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../Custom Design/Profile_Clip_Call.dart';
import '../Firebase/Google_auth_firebase.dart';
import 'Forget_Password.dart';

class SigininPage extends StatefulWidget {
  const SigininPage({super.key});

  @override
  State<SigininPage> createState() => _SigininPageState();
}

class _SigininPageState extends State<SigininPage> {
  String email = "", password = "";

  TextEditingController mailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfile()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "No User Found for that Email",
              style: TextStyle(fontSize: 18.0),
            )));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Wrong Password Provided by User",
              style: TextStyle(fontSize: 18.0),
            )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/ds.png",
                      scale: 5,
                      height: 100,
                      width: 100.w,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/diu.png",
                          scale: 5,
                          height: 100,
                          width: 100,
                        ),
                        Image.asset(
                          "assets/notification.gif",
                          scale: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const ProfileClip(),
          Column(children: [
            Container(
              height: 495.h,
              width: deviceWidth,
              //height:double.infinity,
              color: const Color.fromARGB(255, 32, 72, 149),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 35),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 40,
                        ),
                      ),
                      Text("Let’s you in",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.7),
                                offset: const Offset(0, 5),
                                blurRadius: 10,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 30.h,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w600,
                            height: 0.h,
                          )),
                      
                    ],
                  ),
                  const Gap(40),
                  Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                      child: Form(
                        key: _formkey,
                        child: Column(children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 30.0),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(15)),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Email';
                                }
                                return null;
                              },
                              controller: mailcontroller,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFFb2b7bf),
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                      color: Color(0xFFb2b7bf),
                                      fontSize: 18.0)),
                            ),
                          ),
                          const Gap(
                            20.0,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 30.0),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(15)),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Password';
                                }
                                return null;
                              },
                              controller: passwordcontroller,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color(0xFFb2b7bf),
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Color(0xFFb2b7bf),
                                      fontSize: 18.0)),
                              obscureText: true,
                            ),
                          ),
                          const Gap(50),
                          GestureDetector(
                            onTap: () {
                              if (_formkey.currentState!.validate()) {
                                setState(() {
                                  email = mailcontroller.text;

                                  password = passwordcontroller.text;
                                });
                              }
                              userLogin();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 30.0),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(9, 129, 107, 1),
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 4,
                                      blurRadius: 10,
                                      offset: const Offset(1, 4),
                                    )
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(),
                                      child: Text(
                                        'Sign In',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontFamily: 'Jost',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                           const SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPassword()));
              },
              child: const Text("Forgot Password?",
                  style: TextStyle(
                      color: Color(0xFF8c8e98),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500)),
            ),

                          const Gap(
                            12.0,
                          ),
                          const Text(
                            "Or Continue With",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 17.0,
                                height: 0,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w500),
                          ),
                          const Gap(
                            25.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    FirebaseService.signInwithGoogle(
                                        context); // Handle Google sign-in here
                                  },
                                  child: Center(
                                    child: Image.asset(
                                      "assets/google.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(20),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Center(
                                    child: Image.asset(
                                  "assets/appleicon.png",
                                  height: 20,
                                  width: 20,
                                )),
                              )
                            ],
                          ),
                          const Gap(
                            35.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Already have an account?",
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 17.0,
                                      height: 0,
                                      fontWeight: FontWeight.w500)),
                              const Gap(
                                5.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SigininPage()));
                                },
                                child: const Text(
                                  "SIGIN IN",
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 17.0,
                                      height: 0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          )
                        ]),
                      ))
                ],
              ),
            ),
          ])
        ])));
  }
}
  
