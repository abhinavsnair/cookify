import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../screens/nav_screen.dart';
import '../../../utilities/utils.dart';


class LogInButton extends StatelessWidget {
  const LogInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Get.to(const NavScreen());
      }),
      child: Container(
        height: 45,
        width: 300,
        decoration: BoxDecoration(
          color: orange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Log In',
            style: GoogleFonts.rokkitt(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}