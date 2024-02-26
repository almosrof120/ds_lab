import 'custom_path.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, Key});

  // Function to handle Google Sign-In
  Future<void> _handleGoogleSignIn() async {
    try {
      GoogleSignInAccount? account = await GoogleSignIn().signIn();
      // Handle the signed-in account
      if (account != null) {
        print('Google Sign-In successful: ${account.displayName}');
        // Add your logic for signed-in user here
      } else {
        print('Google Sign-In canceled');
      }
    } catch (error) {
      print('Google Sign-In error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ClipPath(
            clipper: Customclippath(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 32, 72, 149),
              child: Center(
                child: Stack(children: [
                  Positioned(
                    left: 60,
                    top: 230,
                    child: Row(
                      children: [
                        Text(
                          "Let’s you in",
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 300,
                    child: SvgPicture.asset(
                      'assets/google.svg',
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Positioned(
                    left: 120,
                    top: 315,
                    child: Row(
                      children: [
                        // Google Sign-In Button
                        GestureDetector(
                            onTap: _handleGoogleSignIn,
                            child: const Text(
                              'Continue with Google',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 18,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            )),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 360,
                    child: Row(
                      children: [
                        Positioned(
                          // left: 120,
                          // top: 360,
                          child: SvgPicture.asset(
                            'assets/apple.svg',
                            height: 70,
                            width: 70,
                          ),
                        ),
                        GestureDetector(

                            //onTap: _handleGoogleSignIn,
                            child: const Text(
                          'Continue with Apple',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )),
                      ],
                    ),
                  ),
                  const Positioned(
                      left: 180,
                      top: 420,
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
                      )),
                   // Add some space between '(Or)' and TextButton
                   // Add a TextButton for navigation
          // Positioned(

          //   left: 80,
          //   top: 480,
            
          //   child: TextButton(
              
          //     onPressed: (){},
              
          //     child: const Text(
          //       'Sign In with Your Account',
          //       style: 
          //       TextStyle(
          //         decorationStyle: TextDecorationStyle.dotted,
          //         backgroundColor: Color(0x0009816b),
          //         color: Colors.white,
          //         fontSize: 18,
          //         fontFamily: 'Mulish',
          //         fontWeight: FontWeight.w600,
                  
          //       ),
          //     ),
          //   ),
          // )
                ]),
              ),
              
            ),
            
            )
            
            
            
            );
  }
}

// ignore: camel_case_types
class _goToAnotherPage {
  _goToAnotherPage(BuildContext context);
}
