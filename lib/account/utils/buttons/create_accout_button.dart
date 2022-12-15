
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../screens/nav_screen.dart';
import '../../../utilities/constants.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Get.to(const NavScreen(), transition: Transition.fadeIn);
      }),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          height: 45.h,
          width: 300.w,
          decoration: BoxDecoration(
            color: orange,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              'Create an Account',
              style: GoogleFonts.rokkitt(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
