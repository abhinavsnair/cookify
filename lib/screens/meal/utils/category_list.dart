
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utilities/utils.dart';

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
    return Column(
      children: List.generate(4, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 80,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodtime[index],
                  style: GoogleFonts.rokkitt(color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      height: 55,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(image[index]),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item[index],
                            style: GoogleFonts.rokkitt(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            time[index],
                            style: GoogleFonts.rokkitt(color: grey),
                          )
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

