import 'package:cookify/account/forgotpass.dart';
import 'package:cookify/account/login.dart';
import 'package:cookify/screens/nav_screen.dart';
import 'package:cookify/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  List icon = [
    const Icon(
      Icons.person,
      size: 28,
      color: orange,
    ),
    const Icon(
      Icons.mail_outline_rounded,
      size: 28,
      color: orange,
    ),
    const Icon(
      Icons.lock_outline,
      size: 28,
      color: orange,
    )
  ];
  List text = ['Name', 'Email Address', 'Password'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
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
              'Create an Account',
              style: GoogleFonts.rokkitt(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: orange,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: List.generate(3, (index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 102, 0).withOpacity(0.18),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: icon[index],
                        hintText: text[index],
                        hintStyle: GoogleFonts.rokkitt(
                          color: orange,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: TextButton(
                onPressed: () {
                  Get.to(const FpScreen(),transition: Transition.fadeIn);
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
                Get.to(const NavScreen(),transition: Transition.fadeIn);
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
                    'Create an Account',
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
                Get.to(const LoginScreen(),transition: Transition.fadeIn);
              }),
              child: SizedBox(
                height: 30,
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'I already have an account',
                      style: GoogleFonts.rokkitt(
                        color: orange,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: 0.5,
                      width: 148,
                      color: orange,
                    )
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
