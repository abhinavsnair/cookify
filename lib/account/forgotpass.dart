import 'package:cookify/account/signin.dart';
import 'package:cookify/account/utils/buttons/fp_button.dart';
import 'package:cookify/account/utils/widgets/title_widget.dart';
import 'package:cookify/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class FpScreen extends StatelessWidget {
  const FpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: 100.h),
          child: Column(
            children: [
              const TitleWidget(title: 'Forgot Password'),
               SizedBox(
                height: 25.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color.fromARGB(255, 255, 102, 0)
                        .withOpacity(0.18),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon:  Icon(
                        Icons.mail_outline_outlined,
                        size: 28.h,
                        color: orange,
                      ),
                      hintText: 'Email Address',
                      hintStyle: GoogleFonts.rokkitt(
                        color: orange,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              const ForgotPasswordButton(),
              GestureDetector(
                onTap: (() {
                  Get.to(SigninScreen());
                }),
                child: SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'I haven\'t an account',
                        style: GoogleFonts.rokkitt(
                          color: orange,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
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
