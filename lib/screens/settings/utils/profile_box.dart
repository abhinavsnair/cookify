import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utilities/utils.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 128, 127, 127).withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              'https://i.pinimg.com/236x/fe/73/a6/fe73a68c83bb9c803b46ff50e228507d.jpg',
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Abhinav S Nair',
                  style: GoogleFonts.rokkitt(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'abhinavsnair28@gmail.com',
                  style: GoogleFonts.rokkitt(
                    color: grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: const Border(
                        bottom: BorderSide(color: orange),
                        top: BorderSide(color: orange),
                        left: BorderSide(color: orange),
                        right: BorderSide(color: orange),
                      )),
                  child: Center(
                    child: Text(
                      'Edit Profile',
                      style: GoogleFonts.rokkitt(
                        color: orange,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
