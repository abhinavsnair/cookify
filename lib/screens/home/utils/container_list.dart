
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utilities/card.dart';
import '../../../utilities/utils.dart';

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
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          3,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (() {
                  Get.to(const CardView());
                }),
                child: Container(
                  height: 240,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(image[index]),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 5),
                        child: Container(
                          height: 30,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey[900]),
                          child: Center(
                            child: Text(
                              item[index],
                              style: GoogleFonts.rokkitt(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, left: 28),
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 10,
                          ),
                          height: 80,
                          width: 180,
                          decoration: BoxDecoration(
                            color:
                                const Color.fromARGB(255, 41, 27, 22)
                                    .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    category[index],
                                    style: GoogleFonts.rokkitt(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Icon(
                                    Icons.bookmark_outline_outlined,
                                    color: orange,
                                    size: 25,
                                  )
                                ],
                              ),
                              Text(
                                '30 recipies | 1 serving',
                                style: GoogleFonts.rokkitt(
                                    color: Colors.white),
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

