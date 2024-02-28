import 'package:ds_lab/Firebase/continue_with.dart';
import 'package:ds_lab/profile/custom_button.dart';
import 'package:ds_lab/sign%20in%20page/sigining_page.dart';
import 'package:flutter_svg/svg.dart';
import 'custom_path.dart';
import 'package:flutter/material.dart';
import 'package:ds_lab/sign in page/siginup_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ClipPath(
        clipper: Customclippath(
          Colors.black,
        ),
        child: SizedBox(
          height: deviceHeight,
          width: deviceWidth,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 32, 72, 149),
            child: SizedBox(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 50, top: 220),
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 50
                  
                          
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
                            fontSize: 28,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 50, ),
                      ),
                      SvgPicture.asset(
                        'assets/google.svg',
                        height: 70,
                        width: 70,
                      ),
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
                                fontSize: 18,
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
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 50,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/apple.svg',
                        height: 70,
                        width: 70,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //  FirebaseService.signInwithGoogle(context);     // Handle Apple sign-in here
                            },
                            child: const Text(
                              'Continue with Apple',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 18,
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
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                           
                          ),
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
                  const SizedBox(
                    height: 20,
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
                        buttonHeight: 54,
                        buttonWidth: 328,
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
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                       const Padding(
                        padding: EdgeInsets.only()),
                      const Text(
                        'Don’t have an Account? ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(176, 170, 170, 100),
                          fontSize: 14,
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
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                      )
                    ],
                    
                  ),
                  
                ],
                
              ),
              
            ),
          ),
        ),
      ),
    );
  }
}
    

