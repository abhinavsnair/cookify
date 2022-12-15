// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookify/utilities/card.dart';
import 'package:cookify/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/search_bar.dart';

class ShowcaseScreen extends StatelessWidget {
  ShowcaseScreen({super.key});
  List icon = [
    Icon(
      Icons.kitchen,
      color: orange,
    ),
    Icon(
      Icons.fastfood_outlined,
      color: orange,
    ),
    Icon(
      Icons.local_pizza_outlined,
      color: orange,
    ),
    Icon(
      Icons.cake_outlined,
      color: orange,
    ),
    Icon(
      Icons.set_meal,
      color: orange,
    ),
    Icon(
      Icons.coffee_outlined,
      color: orange,
    )
  ];
  List text = [
    'All',
    'Fastfood',
    'pizza',
    'Cake',
    'Seafood',
    'Tea',
  ];

  List image = [
    'https://i.pinimg.com/564x/8d/d3/89/8dd3890d112d957137721aae6fb9ba17.jpg',
    'https://i.pinimg.com/236x/2a/99/66/2a99665dcc400a47ce9890d24ae08209.jpg',
    'https://i.pinimg.com/236x/dc/6d/07/dc6d0735e09f932e5383f59c4a55f4d4.jpg',
  ];
  List item = [
    'Cocoa Maca Walnut Milk',
    'Maple Syrup Buns',
    'danish pecun',
  ];

  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Exit App'),
              content: const Text('Do you want to exit the App?'),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text(
                    'No',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => SystemNavigator.pop(),
                  child: const Text(
                    'Yes',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ) ??
          false;
    }

    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
     
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  SearchBar(),
                  SizedBox(
                    height: 70.h,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0.w),
                          child: Container(
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                                color: boxOrange.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Column(
                              children: [
                                icon[index],
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  text[index],
                                  style: GoogleFonts.rokkitt(
                                    color: orange,
                                    fontWeight: FontWeight.w500,
                                     fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  Column(
                    children: List.generate(3, (index) {
                      return Padding(
                        padding: EdgeInsets.all(5.0.w),
                        child: GestureDetector(
                          onTap: (() {
                            Get.to(CardView());
                          }),
                          child: Container(
                            height: 280.h,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 200.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      image: DecorationImage(
                                        image: NetworkImage(image[index]),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  item[index],
                                  style: GoogleFonts.rokkitt(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.sp),
                                ),
                                Text(
                                  'Easy, quick and yet so delicious',
                                  style: GoogleFonts.rokkitt(
                                      color: grey, fontSize: 12.sp),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.favorite_border_outlined,
                                          color: grey,
                                          size: 20.h,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '100',
                                          style: GoogleFonts.rokkitt(
                                            color: grey,
                                            fontSize: 12.sp,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time_rounded,
                                          color: grey,
                                          size: 20.h,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '50\'',
                                          style: GoogleFonts.rokkitt(
                                            color: grey,
                                            fontSize: 12.sp,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Text(
                                      '2 Ingredients',
                                      style: GoogleFonts.rokkitt(
                                        color: grey,
                                        fontSize: 12.sp,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SpinKitRing(
                    color: orange,
                    lineWidth: 3.w,
                    size: 22.h,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
