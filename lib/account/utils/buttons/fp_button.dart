import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../screens/nav_screen.dart';
import '../../../utilities/utils.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const NavScreen());
      },
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          color: orange,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Center(
          child: Text(
            'Forgot password',
            style: GoogleFonts.rokkitt(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
