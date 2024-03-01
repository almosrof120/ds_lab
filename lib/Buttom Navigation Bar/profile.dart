import 'package:ds_lab/Custom%20Design/Profile_Clip_Call.dart';
import 'package:ds_lab/Firebase/Google_auth_firebase.dart';
import 'package:ds_lab/Custom%20Design/Custom_Buttom.dart';
import 'package:ds_lab/Sigin%20In%20Page/Sigin_in_Profile.dart';
import 'package:flutter/material.dart';
import 'package:ds_lab/Sigin%20In%20Page/Sigin_up_Profile.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileClip(),
            Column(
              children: [
                Container(
                    height: 490.h,
                    width: deviceWidth,
                    //height:double.infinity,
                    color: const Color.fromARGB(255, 32, 72, 149),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 67),
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
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 28,
                                  fontFamily: 'Jost',
                                  fontWeight: FontWeight.w600,
                                  height: 0.h,
                                )),
                          ],
                        ),
                        const Gap(30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 50),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Center(
                                  child: Image.asset(
                                "assets/google.png",
                                height: 20,
                                width: 20,
                              )),
                            ),
                            const Gap(10),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    FirebaseService.signInwithGoogle(
                                        context); // Handle Google sign-in here
                                  },
                                  child: const Text(
                                    'Continue with Google',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 19,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Gap(
                          20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 50),
                            ),
                            Row(
                              children: [
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
                                ),
                                const Gap(10),
                                GestureDetector(
                                  onTap: () {
                                    //  FirebaseService.signInwithGoogle(context);     // Handle Apple sign-in here
                                  },
                                  child: const Text(
                                    'Continue with Apple',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 19,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Gap(
                          13,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Text(
                                  '(Or)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 19,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ]),
                        const Gap(
                          35,
                        ),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(),
                            ),
                            LoginProfile(
                              buttonText: 'Sign In with Your Account',
                              buttonColor: const Color.fromRGBO(9, 129, 107, 1),
                              buttonHeight: 56,
                              buttonWidth: 330,
                              buttonCircleColor: Colors.white,
                              buttonCircleRedious: 43,
                              buttonIcon: const Icon(Icons.arrow_forward),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SigininPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        const Gap(
                          3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(padding: EdgeInsets.only()),
                            const Text(
                              'Don’t have an Account? ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(176, 170, 170, 100),
                                fontSize: 17,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SiginUp()));
                              },
                              child: const Text(
                                'SIGN UP',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
