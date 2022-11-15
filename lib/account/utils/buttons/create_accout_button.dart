
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../screens/nav_screen.dart';
import '../../../utilities/utils.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (() {
        Get.to(const NavScreen(), transition: Transition.fadeIn);
      }),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: size.height*0.062,
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
    );
  }
}
