import 'package:cookify/account/signin.dart';
import 'package:cookify/account/utils/widgets/fp_widget.dart';
import 'package:cookify/account/utils/widgets/title_widget.dart';
import 'package:cookify/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/buttons/logIn_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
   
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: 80.h),
          child: Column(
            children: [
              const TitleWidget(
                title: 'Log In',
              ),
               SizedBox(
                height: 40.h,
              ),
              Padding(
                padding:
                     EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color.fromARGB(255, 255, 102, 0)
                        .withOpacity(0.18),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon:  Icon(
                        Icons.mail_outline,
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
              Padding(
                padding:
                     EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color.fromARGB(255, 255, 102, 0)
                        .withOpacity(0.18),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon:  Icon(
                        Icons.lock_outline_rounded,
                        size: 28.h,
                        color: orange,
                      ),
                      hintText: 'Password',
                      hintStyle: GoogleFonts.rokkitt(
                        color: orange,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              const ForgotPasswordWidget(),
              const LogInButton(),
               SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: (() {
                  Get.to(SigninScreen());
                }),
                child: SizedBox(
                  height: 30.h,
                  width: double.infinity,
                  child: Column(
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
