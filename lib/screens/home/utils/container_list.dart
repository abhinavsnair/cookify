import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utilities/card.dart';
import '../../../utilities/constants.dart';

class ContainerList extends StatelessWidget {
  const ContainerList({
    Key? key,
    required this.image,
    required this.item,
    required this.category,
  }) : super(key: key);

  final List image;
  final List item;
  final List category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          3,
          (index) {
            return Padding(
              padding: EdgeInsets.all(8.0.h),
              child: GestureDetector(
                onTap: (() {
                  Get.to(const CardView());
                }),
                child: Container(
                  height: 240.h,
                  width: 220.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                        image: NetworkImage(image[index]), fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.h, left: 5.w),
                        child: Container(
                          height: 30.h,
                          width: 55.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            color: Colors.grey[900]?.withOpacity(0.5),
                          ),
                          child: Center(
                            child: Text(
                              item[index],
                              style: GoogleFonts.rokkitt(
                                color: Colors.white,
                                fontSize: 12.sp
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: 15.h, left: 28.w),
                        child: Container(
                          padding:  EdgeInsets.only(
                            left: 5.w,
                            right: 10.w,
                          ),
                          height: 80.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 41, 27, 22)
                                .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    category[index],
                                    style: GoogleFonts.rokkitt(
                                        color: Colors.white,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                   Icon(
                                    Icons.bookmark_outline_outlined,
                                    color: orange,
                                    size: 25.h,
                                  )
                                ],
                              ),
                              Text(
                                '30 recipies | 1 serving',
                                style: GoogleFonts.rokkitt(color: Colors.white,fontSize: 12.sp,),
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
          },
        ),
      ),
    );
  }
}
