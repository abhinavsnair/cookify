import 'package:cookify/account/login.dart';
import 'package:cookify/account/signin.dart';
import 'package:cookify/utilities/utils.dart';
import 'package:flutter/material.dart';
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
              padding: const EdgeInsets.only(top: 35),
              child: Center(
                child: Text(
                  'Welcome to Cookify',
                  style: GoogleFonts.rokkitt(
                    fontWeight: FontWeight.w400,
                    color: orange,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Lottie.asset('assets/lottie.json'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
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
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        const LoginScreen(),
                        transition: Transition.fade,
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        color: orange,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'LOG IN',
                          style: GoogleFonts.rokkitt(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
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
