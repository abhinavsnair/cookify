import 'package:cookify/account/login.dart';
import 'package:cookify/account/signin.dart';
import 'package:cookify/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 35.h),
              child: Center(
                child: Text(
                  'Welcome to Cookify',
                  style: GoogleFonts.rokkitt(
                    fontWeight: FontWeight.w400,
                    color: orange,
                    fontSize: 30.sp,
                  ),
                ),
              ),
            ),
            Lottie.asset('assets/lottie.json'),
            Padding(
              padding:  EdgeInsets.only(top: 30.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.to(
                        SigninScreen(),
                        transition: Transition.fadeIn,
                      );
                    },
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.rokkitt(
                          color: orange,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                   SizedBox(
                    width: 45.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                         const LoginScreen(),
                        transition: Transition.fade,
                      );
                    },
                    child: Container(
                      height: 40.h,
                      width: 140.w,
                      decoration: BoxDecoration(
                        color: orange,
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      child: Center(
                        child: Text(
                          'LOG IN',
                          style: GoogleFonts.rokkitt(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
