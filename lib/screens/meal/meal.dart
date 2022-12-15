import 'package:cookify/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/category_list.dart';
import 'utils/vit_min_widget.dart';

class MealScreen extends StatefulWidget {
  const MealScreen({super.key});

  @override
  State<MealScreen> createState() => _MealScreenState();
}

class _MealScreenState extends State<MealScreen> {
  final _datalist = [
    '01-Sun',
    '02-Mon',
    '03-Tue',
    '04-Wed',
    '05-Thu',
    '06-Fri',
    '07-Sat',
    '08-Sun'
  ];
  int? _value = 0;
  List foodtime = [
    'Breakfast',
    'Lunch',
    'Snacks',
    'Dinner',
  ];
  List image = [
    'https://i.pinimg.com/236x/b2/bc/29/b2bc2955a7e159e7bc4287d2362ed960.jpg',
    'https://i.pinimg.com/236x/70/23/fa/7023fa854c49317762d7aa311cdd7f28.jpg',
    'https://i.pinimg.com/236x/54/a5/f2/54a5f214958d2905d8a4d02370c1d452.jpg',
    'https://i.pinimg.com/236x/8a/89/9f/8a899f9fbaf95a11108a82c688609572.jpg',
  ];
  List item = [
    'Poached Egg',
    'Burger',
    'Lemonade',
    'Pop Corn',
  ];
  List time = [
    'Breakfast Time : 7:30',
    'Lunch Time : 1:10',
    'Snack Time : 5:15',
    'Dinner Time : 8:30'
  ];

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
        
        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.all(8.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today\'s Plan',
                  style: GoogleFonts.rokkitt(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp,
                  
                  ),
                ),
                SizedBox(
                  height: 50.h,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _datalist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding:  EdgeInsets.all(5.0.w),
                          child: ChoiceChip(
                            selectedColor: orange,
                            backgroundColor: Colors.grey[800],
                            label: SizedBox(
                              height: 20.h,
                              width: 50.w,
                              child: Center(
                                child: Text(
                                  _datalist[index],
                                ),
                              ),
                            ),
                            selected: _value == index,
                            onSelected: (bool value) {
                              setState(() {
                                _value = value ? index : null;
                              });
                            },
                            labelStyle: GoogleFonts.rokkitt(
                              color: Colors.white,
                            ),
                          ),
                        );
                      }),
                ),
                 SizedBox(
                  height: 20.h,
                ),
                const VitaminsandMinaralsWidget(),
                CategoryList(
                  foodtime: foodtime,
                  image: image,
                  item: item,
                  time: time,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
