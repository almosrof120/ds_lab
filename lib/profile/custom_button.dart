
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';




class LoginProfile extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final double buttonHeight;
  final double buttonWidth;
  final Color buttonCircleColor;
  final double buttonCircleRedious;
  final Icon buttonIcon;
  final VoidCallback onPressed;

  const LoginProfile({
    Key? key,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.buttonCircleColor,
    required this.buttonCircleRedious,
    required this.buttonIcon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 4,
                  blurRadius: 10,
                  offset: const Offset(1, 4),
                )
              ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  
                  buttonText,
                  style: const TextStyle(
                   
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w600,
                    
                  ),
                ),
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: buttonCircleRedious,
                  width: buttonCircleRedious,
                  
                  decoration: BoxDecoration(
                    color: buttonCircleColor,
                    shape: BoxShape.circle,
                    
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: buttonIcon,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}