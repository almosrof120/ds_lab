import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class UserProfile extends StatelessWidget {
   UserProfile({super.key});
  User? user = FirebaseAuth.instance.currentUser;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(user!.email!),
            Text(user!.displayName!),
            CircleAvatar(
              backgroundImage: NetworkImage(user!.photoURL!),
              radius: 40,
            )
          ],
        ))
    );
  }
}