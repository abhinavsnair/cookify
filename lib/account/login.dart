import 'package:cookify/account/forgotpass.dart';
import 'package:cookify/account/signin.dart';
import 'package:cookify/screens/nav_screen.dart';
import 'package:cookify/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              const Center(
                child: Icon(
                  Icons.menu_book_outlined,
                  color: orange,
                  size: 55,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Log In',
                style: GoogleFonts.rokkitt(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: orange,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 102, 0)
                        .withOpacity(0.18),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.mail_outline,
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 102, 0)
                        .withOpacity(0.18),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        size: 28,
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
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: TextButton(
                  onPressed: () {
                    Get.to(const FpScreen());
                  },
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.rokkitt(
                      color: orange,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  Get.to(const NavScreen());
                }),
                child: Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                    color: orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Log In',
                      style: GoogleFonts.rokkitt(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (() {
                  Get.to(SigninScreen());
                }),
                child: SizedBox(
                  height: 30,
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
                      Container(
                        height: 0.5,
                        width: 123,
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
