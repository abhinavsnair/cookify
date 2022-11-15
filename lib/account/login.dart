import 'package:cookify/account/signin.dart';
import 'package:cookify/account/utils/widgets/fp_widget.dart';
import 'package:cookify/account/utils/widgets/title_widget.dart';
import 'package:cookify/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/buttons/logIn_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              const TitleWidget(
                title: 'Log In',
              ),
              const SizedBox(
                height: 40,
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
              const ForgotPasswordWidget(),
              const LogInButton(),
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
                        height: size.height * 0.001,
                        width: size.width * 0.3,
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
