import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utilities/constants.dart';

class SeeRecipeContainer extends StatelessWidget {
  const SeeRecipeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: boxOrange.withOpacity(0.18),
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Icon(
            Icons.outdoor_grill_outlined,
            color: orange,
            size: 70.h,
          ),
           SizedBox(
            width: 10.w,
          ),
          Padding(
            padding:  EdgeInsets.only(top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You have 12 recipes that\nyou haven\'t tried yet',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15.sp,
                    color: Colors.white,
                  ),
                ),
                 SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 20.h,
                  child: Column(
                    children: [
                      Text(
                        'See recipes',
                        style: GoogleFonts.rokkitt(
                          color: orange,
                          fontSize: 12.sp
                        ),
                      ),
                      Container(
                        height: 0.8.h,
                        width: 40.w,
                        color: orange,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
