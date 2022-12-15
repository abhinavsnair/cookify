import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utilities/constants.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Icon(
            Icons.menu_book_outlined,
            color: orange,
            size: 55,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            title,
            style: GoogleFonts.rokkitt(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: orange,
            ),
          ),
        ),
      ],
    );
  }
}
