import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utilities/utils.dart';

class SeeRecipeContainer extends StatelessWidget {
  const SeeRecipeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: boxOrange.withOpacity(0.18),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.outdoor_grill_outlined,
            color: orange,
            size: 70,
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You have 12 recipes that\nyou haven\'t tried yet',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 20,
                  child: Column(
                    children: [
                      Text(
                        'See recipes',
                        style: GoogleFonts.rokkitt(
                          color: orange,
                        ),
                      ),
                      Container(
                        height: 0.8,
                        width: 68,
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
