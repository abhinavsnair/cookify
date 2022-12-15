import 'package:cookify/account/login.dart';
import 'package:cookify/account/utils/widgets/title_widget.dart';
import 'package:cookify/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/buttons/create_accout_button.dart';
import 'utils/widgets/fp_widget.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  List icon = [
    Icon(
      Icons.person,
      size: 20.h,
      color: orange,
    ),
    Icon(
      Icons.mail_outline_rounded,
      size: 20.h,
      color: orange,
    ),
    Icon(
      Icons.lock_outline,
      size: 20.h,
      color: orange,
    )
  ];
  List text = ['Name', 'Email Address', 'Password'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: ListView(
          children: [
            const TitleWidget(title: 'Create an Account'),
            SizedBox(
              height: 30.h,
            ),
            Column(
              children: List.generate(3, (index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Container(
                    height: 45.h,
                    width: 350.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color.fromARGB(255, 255, 102, 0)
                          .withOpacity(0.18),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: icon[index],
                        hintText: text[index],
                        hintStyle: GoogleFonts.rokkitt(
                          color: orange,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30).r,
              child: const ForgotPasswordWidget(),
            ),
            SizedBox(height: 10.h,),
            const CreateAccountButton(),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: (() {
                Get.to(
                  const LoginScreen(),
                  transition: Transition.fadeIn,
                );
              }),
              child: SizedBox(
                height: 30.h,
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'I already have an account',
                      style: GoogleFonts.rokkitt(
                          color: orange,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
