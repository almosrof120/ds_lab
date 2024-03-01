import 'package:ds_lab/Custom%20Design/Custom_path_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileClip extends StatelessWidget {
  const ProfileClip({super.key});

  @override
  Widget build(BuildContext context) {
    //final deviceHeight = MediaQuery.of(context).size.height;
    //final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
        height: 127.h,
        width: 360.w,
        color: const Color.fromARGB(255, 32, 72, 149),
        child: ClipPath(
          clipper: Customclippath(),
          child: Container(
            color: Colors.white,
          ),
        ));
  }
}
