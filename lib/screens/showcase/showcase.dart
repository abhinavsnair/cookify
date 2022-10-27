// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookify/utilities/card.dart';
import 'package:cookify/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Scaffold(
        backgroundColor: bcolor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 58, 58, 58),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: grey,
                              ),
                              hintText: 'search',
                              hintStyle: TextStyle(color: grey),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: boxOrange.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.restaurant_menu,
                        color: orange,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(6, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                              color: boxOrange.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              icon[index],
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                text[index],
                                style: GoogleFonts.rokkitt(
                                  color: orange,
                                  fontWeight: FontWeight.w500,
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
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        onTap: (() {
                          Get.to(CardView());
                        }),
                        child: Container(
                          height: 280,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          image[index]),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                item[index],
                                style: GoogleFonts.rokkitt(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              Text(
                                'Easy, quick and yet so delicious',
                                style: GoogleFonts.rokkitt(
                                  color: grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.favorite_border_outlined,
                                        color: grey,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '100',
                                        style: GoogleFonts.rokkitt(
                                          color: grey,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_rounded,
                                        color: grey,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '50\'',
                                        style: GoogleFonts.rokkitt(
                                          color: grey,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '2 Ingredients',
                                    style: GoogleFonts.rokkitt(
                                      color: grey,
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
                SizedBox(height: 10,),
                SpinKitRing(
                  color: orange,
                  lineWidth: 3,
                  size: 22,
                )
              ],
            ),
          ),
        ));
  }
}
