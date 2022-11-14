import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utilities/utils.dart';

class FeelFreeBox extends StatelessWidget {
  const FeelFreeBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: boxOrange.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.headphones,
            color: orange,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            'Feel free to ask, We ready to help',
            style: GoogleFonts.rokkitt(
              color: orange,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
