import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utilities/constants.dart';
import '../../forgotpass.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 250),
      child: TextButton(
        onPressed: () {
          Get.to(const FpScreen(), transition: Transition.fadeIn);
        },
        child: Text(
          'Forgot Password?',
          style: GoogleFonts.rokkitt(
            color: orange,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
