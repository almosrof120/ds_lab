import 'package:ds_lab/profile/custom_button.dart';
import 'package:ds_lab/sign%20in%20page/sigining_page.dart';
import 'package:ds_lab/sign%20in%20page/siginup_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'custom_path.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Future<void> _handleGoogleSignIn() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await GoogleSignIn().signIn();

      if (googleSignInAccount != null) {
        // Google Sign In was successful, you can now use the account details.
        print('User signed in: ${googleSignInAccount.displayName}');
      } else {
        // Google Sign In was canceled by the user.
        print('User canceled the Google Sign In');
      }
    } catch (error) {
      print('Error during Google Sign In: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: Customclippath(
                  Colors.white,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: const Color.fromARGB(255, 32, 72, 149),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Positioned(
                left: 60,
                top: 280,
                child: Column(children: [
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
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Positioned(
                left: 50,
                top: 350,
                child: SvgPicture.asset(
                  'assets/google.svg',
                  height: 70,
                  width: 70,
                ),
              ),
              Positioned(
                left: 120,
                top: 365,
                child: GestureDetector(
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
              ),
              const SizedBox(
                height: 10,
              ),
              Positioned(
                left: 50,
                top: 410,
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
                  top: 480,
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
              const SizedBox(
                height: 20,
              ),
              Positioned(
                left: 30,
                top: 530,
                child: Center(
                  child: LoginProfile(
                      buttonText: 'Sign In with Your Account',
                      buttonColor: const Color.fromRGBO(9, 129, 107, 1),
                      buttonHeight: 54,
                      buttonWidth: 328,
                      buttonCircleColor: Colors.white,
                      buttonCircleRedious: 43,
                      buttonIcon: const Icon(Icons.arrow_forward),
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SigininPage()));
                      })),
                ),
              ),
              const Positioned(
                left: 85,
                top: 593,
                child: Center(
                  child: Text(
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
                ),
              ),
              Positioned(
                left: 245,
                top: 579,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SiginupPage()));
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
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
