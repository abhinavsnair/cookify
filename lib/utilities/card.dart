// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookify/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Padding(
        padding:  EdgeInsets.all(8.0.w),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.chevron_left_sharp,
                   
                  )),
              Icon(
                Icons.favorite_border,
                color: orange,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Watercress Salad',
            style: GoogleFonts.rokkitt(
    
              fontWeight: FontWeight.bold,
              fontSize: 30.sp,
            ),
          ),
          Text(
            'White onion, Fennel and watercress salad',
            style: GoogleFonts.rokkitt(color: grey, fontSize: 16.sp),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Nutritions',
            style: GoogleFonts.rokkitt(
                fontWeight: FontWeight.bold, fontSize: 26.sp, ),
          ),
          Stack(
            children: [
              SizedBox(
                height: 230.h,
                width: double.infinity,
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          padding: EdgeInsets.all(4.w),
                          height: 40.h,
                          width: 130.w,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 212, 108, 48)
                                  .withOpacity(0.6),
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                    color: orange,
                                    borderRadius: BorderRadius.circular(20).r),
                                child: Center(
                                    child: Text(
                                  '250',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Calories',
                                      style: GoogleFonts.rokkitt(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600)),
                                  Text(
                                    'kcal',
                                    style: TextStyle(color: grey),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding:  EdgeInsets.all(8.0.w),
                          child: Container(
                            padding: EdgeInsets.all(4.w),
                            height: 40.h,
                            width: 130.w,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 212, 108, 48)
                                    .withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20.r)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      color: orange,
                                      borderRadius: BorderRadius.circular(20.r)),
                                  child: Center(
                                      child: Text(
                                    '6.7',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Protein',
                                        style: GoogleFonts.rokkitt(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600)),
                                    Text(
                                      '9',
                                      style: TextStyle(color: grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding:  EdgeInsets.all(8.0.w),
                          child: Container(
                            padding: EdgeInsets.all(4.w),
                            height: 40.h,
                            width: 130.w,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 212, 108, 48)
                                    .withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20.r)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      color: orange,
                                      borderRadius: BorderRadius.circular(20.r)),
                                  child: Center(
                                      child: Text(
                                    '35',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('carbo',
                                        style: GoogleFonts.rokkitt(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600)),
                                    Text(
                                      '9',
                                      style: TextStyle(color: grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 170.w,
                top: 10.h,
                bottom: 45.h,
                child: Container(
                  height: 200.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://i.pinimg.com/236x/71/34/32/713432f14f6cbb70a232d3152d2eaeb8.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    color: grey,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Ingredients',
            style: GoogleFonts.rokkitt(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            
            ),
          ),
          Text(
            '2 cups pecans,divided',
            style: GoogleFonts.rokkitt(
              color: grey,
              fontSize: 16,
            ),
          ),
          Text(
            '1 tablespoon unsalted butter, melted',
            style: GoogleFonts.rokkitt(
              color: grey,
              fontSize: 16,
            ),
          ),
          Text(
            '1½ tablespoon graded parmesan cheese (optional)',
            style: GoogleFonts.rokkitt(
              color: grey,
              fontSize: 16,
            ),
          ),
          Text(
            '1 teaspoon seasalt',
            style: GoogleFonts.rokkitt(
              color: grey,
              fontSize: 16,
            ),
          ),
          Text(
            '½ teaspoon ground black papper',
            style: GoogleFonts.rokkitt(
              color: grey,
              fontSize: 16,
            ),
          ),
          Text(
            '1 tablespoon lemon juice (optional)',
            style: GoogleFonts.rokkitt(
              color: grey,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Preparations',
            style: GoogleFonts.rokkitt(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.white,
            ),
          ),
          Text(
            'Bring a large pot of salted water to a boil and set a bowl of ice water nearby. Drop the snap peas into the boiling water and blanch for 2 minutes. Remove the snap peas and immediately immerse in the ice water long enough to cool completely, about 15 seconds. Drain and place on a kitchen towel or paper towels to dry.',
            style: GoogleFonts.rokkitt(
              color: grey,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: GestureDetector(
              onTap: (){},
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: orange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_circle_fill_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Watch Now',
                        style: GoogleFonts.rokkitt(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
