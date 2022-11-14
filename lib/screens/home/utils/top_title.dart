
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utilities/utils.dart';

class TopTitle extends StatelessWidget {
  const TopTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello Abhinav,',
          style: GoogleFonts.rokkitt(
            color: orange,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Excited to cook something new today?',
          style: GoogleFonts.rokkitt(
            color: grey,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
