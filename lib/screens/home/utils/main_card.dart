import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utilities/card.dart';
import '../../../utilities/utils.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Get.to(const CardView());
      }),
      child: Container(
        padding: const EdgeInsets.only(top: 5),
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/564x/07/43/10/0743105a1caa0e9ac691f4eb50830730.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 35,
                    width: 60,
                    decoration: BoxDecoration(
                      color: orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                      'Non Veg',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.bookmark_border_outlined,
                    color: orange,
                    size: 30,
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.orange.withOpacity(0.15), Colors.red],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chicken Makhani\nSouth Special',
                    style: GoogleFonts.rokkitt(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Text(
                        '30 recipes',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      Text(
                        '|',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '1 serving',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
