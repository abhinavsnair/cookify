import 'package:cookify/account/signin.dart';
import 'package:cookify/account/utils/buttons/fp_button.dart';
import 'package:cookify/account/utils/widgets/title_widget.dart';
import 'package:cookify/screens/nav_screen.dart';
import 'package:cookify/utilities/utils.dart';
import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              const TitleWidget(title: 'Forgot Password'),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 102, 0)
                        .withOpacity(0.18),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.mail_outline_outlined,
                        size: 28,
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
              const SizedBox(
                height: 20,
              ),
              const ForgotPasswordButton(),
              GestureDetector(
                onTap: (() {
                  Get.to(SigninScreen());
                }),
                child: SizedBox(
                  height: 60,
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
                      Container(
                        height: 0.5,
                        width: 112,
                        color: orange,
                      )
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
