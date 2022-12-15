import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utilities/constants.dart';

class FeelFreeBox extends StatelessWidget {
  const FeelFreeBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: boxOrange.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10.r),
      ),
      height: 50.h,
      width: 300.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.headphones,
            color: orange,
          ),
           SizedBox(
            width: 5.w,
          ),
          Text(
            'Feel free to ask, We ready to help',
            style: GoogleFonts.rokkitt(
              color: orange,
              fontWeight: FontWeight.bold,
              fontSize: 13.sp
            ),
          )
        ],
      ),
    );
  }
}
