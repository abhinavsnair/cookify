import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utilities/constants.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 128, 127, 127).withOpacity(0.1),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
           CircleAvatar(
            radius: 40.r,
            backgroundImage: const NetworkImage(
              'https://i.pinimg.com/236x/fe/73/a6/fe73a68c83bb9c803b46ff50e228507d.jpg',
            ),
          ),
           SizedBox(
            width: 10.w,
          ),
          Padding(
            padding:  EdgeInsets.only(top: 18.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Abhinav S Nair',
                  style: GoogleFonts.rokkitt(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
                Text(
                  'abhinavsnair28@gmail.com',
                  style: GoogleFonts.rokkitt(
                    color: grey,
                    fontSize: 11.sp,
                  ),
                ),
                 SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 30.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      border: const Border(
                        bottom: BorderSide(color: orange),
                        top: BorderSide(color: orange),
                        left: BorderSide(color: orange),
                        right: BorderSide(color: orange),
                      )),
                  child: Center(
                    child: Text(
                      'Edit Profile',
                      style: GoogleFonts.rokkitt(
                        color: orange,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
