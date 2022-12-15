import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../screens/nav_screen.dart';
import '../../../utilities/constants.dart';

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
        height: 45.h,
        width: 300.w,
        decoration: BoxDecoration(
          color: orange,
          borderRadius: BorderRadius.circular(7.r),
        ),
        child: Center(
          child: Text(
            'Forgot password',
            style: GoogleFonts.rokkitt(
                color: Colors.white, fontSize: 15.sp, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
