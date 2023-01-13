import 'package:cookify/screens/home/utils/top_title.dart';
import 'package:cookify/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/container_list.dart';
import 'utils/location_box.dart';
import 'utils/main_card.dart';
import 'utils/see_recipe_container.dart';

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
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Exit App'),
              content: const Text('Do you want to exit the App?'),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text(
                    'No',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => SystemNavigator.pop(),
                  child: const Text(
                    'Yes',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ) ??
          false;
    }

    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0.w),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TopTitle(),
                  LocationBox()
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const SeeRecipeContainer(),
              SizedBox(
                height: 20.h,
              ),
              const MainCard(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Trending Recipie',
                style: GoogleFonts.rokkitt(
                  color: Colors.white,
                  fontSize: 20.sp,
                ),
              ),
              ContainerList(
                image: image,
                item: item,
                category: category,
              )
            ],
          ),
        ),
      ),
    );
  }
}


