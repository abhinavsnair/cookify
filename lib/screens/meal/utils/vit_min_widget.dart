import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utilities/constants.dart';

class VitaminsandMinaralsWidget extends StatelessWidget {
  const VitaminsandMinaralsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: boxOrange.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Vitamins & Minarals',
            style: GoogleFonts.rokkitt(
              color: orange,
              fontWeight: FontWeight.bold,
              fontSize: 23.sp,
            ),
          ),
          Text(
            'How much should you take?',
            style: GoogleFonts.rokkitt(
              color: grey,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '80',
                    style: GoogleFonts.rokkitt(
                      color: orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                    ),
                  ),
                  Text(
                    'vitamin A',
                    style: GoogleFonts.rokkitt(
                      color: grey,
                    ),
                  )
                ],
              ),
              Container(
                height: 50.h,
                width: 1.w,
                color: orange,
              ),
              Column(
                children: [
                  Text(
                    '16',
                    style: GoogleFonts.rokkitt(
                      color: orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                    ),
                  ),
                  Text(
                    'vitamin B',
                    style: GoogleFonts.rokkitt(
                      color: grey,
                    ),
                  )
                ],
              ),
              Container(
                height: 50.h,
                width: 1.w,
                color: orange,
              ),
              Column(
                children: [
                  Text(
                    '97',
                    style: GoogleFonts.rokkitt(
                      color: orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                    ),
                  ),
                  Text(
                    'water',
                    style: GoogleFonts.rokkitt(
                      color: grey,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
