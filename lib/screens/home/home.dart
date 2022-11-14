import 'package:cookify/utilities/card.dart';
import 'package:cookify/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List image = [
    'https://i.pinimg.com/564x/07/43/10/0743105a1caa0e9ac691f4eb50830730.jpg',
    'https://i.pinimg.com/236x/8a/c7/93/8ac793a9a06488953b21624153285829.jpg',
    'https://i.pinimg.com/236x/97/44/22/974422d8e6b4eba5a7fe43b9e12f55e9.jpg'
  ];

  List item = ['South', 'Non Veg', 'Cheese'];
  List category = ['Matar Paneer', 'tandoori Chicken', 'Aloo Gopi'];

  @override
  Widget build(BuildContext context) {
   Future<bool> showExitPopup() async {

      return await showDialog( //show confirm dialogue
        //the return value will be from "Yes" or "No" options
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Exit App'),
          content: const Text('Do you want to exit an App?'),
          actions:[
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              //return false when click on "NO"
              child:const Text('No'),
            ),

            ElevatedButton(
              onPressed: () => SystemNavigator.pop(),
              //return true when click on "Yes"
              child:const Text('Yes'),
            ),
          ],
        ),
      )  ?? false; //if showDialouge had returned null, then return false
    }
    return WillPopScope(
      onWillPop:showExitPopup ,
      child: Scaffold(
        backgroundColor: bcolor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
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
              const SizedBox(
                height: 20,
              ),
              Container(
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
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
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
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, top: 10),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                                Text(
                                  '|',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '1 serving',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Trending Recipie',
                style: GoogleFonts.rokkitt(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(
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
                                  padding:
                                      const EdgeInsets.only(bottom: 15, left: 28),
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                      right: 10,
                                    ),
                                    height: 80,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 41, 27, 22)
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
