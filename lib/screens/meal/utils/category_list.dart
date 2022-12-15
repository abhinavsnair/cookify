
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utilities/constants.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    required this.foodtime,
    required this.image,
    required this.item,
    required this.time,
  }) : super(key: key);

  final List foodtime;
  final List image;
  final List item;
  final List time;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: List.generate(4, (index) {
          return Padding(
            padding:  EdgeInsets.all(8.0.w),
            child: SizedBox(
              height: 80.h,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodtime[index],
                    style: GoogleFonts.rokkitt(color: Colors.white,fontSize: 13.sp),
                  ),
                   SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 55.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            image: DecorationImage(
                              image: NetworkImage(image[index]),
                              fit: BoxFit.cover,
                            )),
                      ),
                       SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item[index],
                              style: GoogleFonts.rokkitt(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                             SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              time[index],
                              style: GoogleFonts.rokkitt(color: grey,fontSize: 12.sp,),
                            )
                          ],
                        ),
                      ),
                       Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.white,
                        size: 24.h,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

