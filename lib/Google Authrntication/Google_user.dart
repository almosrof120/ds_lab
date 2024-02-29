import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (user != null && user.email != null)
              Text(user.email!)
            else
              const Text("Email not available"),

            if (user != null && user.displayName != null)
              Text(user.displayName!)
            else
              const Text("Display Name not available"),

            if (user != null && user.photoURL != null)
              CircleAvatar(
                backgroundImage: NetworkImage(user.photoURL!),
                radius: 40,
              )
            else
              const Text("Profile Picture not available"),
          ],
        ),
      ),
    );
  }
}
