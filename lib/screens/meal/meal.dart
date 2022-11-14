import 'package:cookify/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today\'s Plan',
                style: GoogleFonts.rokkitt(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _datalist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ChoiceChip(
                          selectedColor: orange,
                          backgroundColor: Colors.grey[800],
                          label: SizedBox(
                            height: 20,
                            width: 50,
                            child: Center(child: Text(_datalist[index])),
                          ),
                          selected: _value == index,
                          onSelected: (bool value) {
                            setState(() {
                              _value = value ? index : null;
                            });
                          },
                          labelStyle: GoogleFonts.rokkitt(color: Colors.white),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: boxOrange.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text(
                      'Vitamins & minarals',
                      style: GoogleFonts.rokkitt(
                        color: orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    Text(
                      'How much should you take?',
                      style: GoogleFonts.rokkitt(
                        color: grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '80',
                              style: GoogleFonts.rokkitt(
                                color: orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'vitamin A',
                              style: GoogleFonts.rokkitt(
                                color: grey,
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 1,
                          color: orange,
                        ),
                        Column(
                          children: [
                            Text(
                              '16',
                              style: GoogleFonts.rokkitt(
                                color: orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'vitamin B',
                              style: GoogleFonts.rokkitt(
                                color: grey,
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 1,
                          color: orange,
                        ),
                        Column(
                          children: [
                            Text(
                              '97',
                              style: GoogleFonts.rokkitt(
                                color: orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'water',
                              style: GoogleFonts.rokkitt(
                                color: grey,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
