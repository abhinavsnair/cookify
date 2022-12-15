import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utilities/card.dart';
import '../../../utilities/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Get.to(const CardView());
      }),
      child: Container(
        padding:  EdgeInsets.only(top: 5.w),
        height: 400.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          image: const DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/564x/07/43/10/0743105a1caa0e9ac691f4eb50830730.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 5.w),
                  child: Container(
                    height: 35.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                      color: orange.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: const Center(
                        child: Text(
                      'Non Veg',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: Icon(
                    Icons.bookmark_border_outlined,
                    color: orange.withOpacity(0.8),
                    size: 30.h,
                  ),
                )
              ],
            ),
            Container(
              padding:  EdgeInsets.only(left: 5.w, right: 5.w, top: 10.h),
              height: 150.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:  BorderRadius.only(
                    bottomLeft: Radius.circular(10.r),
                    bottomRight: Radius.circular(10.r)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.orange.withOpacity(0.15), Colors.red],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chicken Makhani\nSouth Special',
                    style: GoogleFonts.rokkitt(
                        color: Colors.white,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children:  [
                      Text(
                        '30 recipes',
                        style: TextStyle(color: Colors.white, fontSize: 13.sp),
                      ),
                      const Text(
                        '|',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '1 serving',
                        style: TextStyle(color: Colors.white, fontSize: 13.sp),
                      )
                    ],
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
