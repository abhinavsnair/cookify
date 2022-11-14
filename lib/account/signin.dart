import 'package:cookify/account/login.dart';
import 'package:cookify/account/utils/widgets/title_widget.dart';
import 'package:cookify/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/buttons/create_accout_button.dart';
import 'utils/widgets/fp_widget.dart';

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
        child: ListView(
          children: [
            const TitleWidget(title: 'Create an Account'),
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
                      color: const Color.fromARGB(255, 255, 102, 0)
                          .withOpacity(0.18),
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
            const ForgotPasswordWidget(),
            const CreateAccountButton(),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (() {
                Get.to(
                  const LoginScreen(),
                  transition: Transition.fadeIn,
                );
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


