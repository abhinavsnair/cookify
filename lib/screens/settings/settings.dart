import 'package:cookify/utilities/utils.dart';
import 'package:cookify/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isSwitchedOn = false;
  bool _switchedOff = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 128, 127, 127)
                        .withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/fe/73/a6/fe73a68c83bb9c803b46ff50e228507d.jpg'),
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
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 440,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 128, 127, 127)
                        .withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Option',
                      style: GoogleFonts.rokkitt(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SwitchListTile(
                      inactiveTrackColor: orange.withOpacity(0.4),
                      activeColor: orange,
                      value: _isSwitchedOn,
                      onChanged: (bool value) {
                        setState(() {
                          _isSwitchedOn = value;
                        });
                      },
                      title: Text(
                        'Notification',
                        style: GoogleFonts.rokkitt(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Language',
                        style: GoogleFonts.rokkitt(
                            color: Colors.white, fontSize: 17),
                      ),
                      trailing: const Icon(
                        Icons.chevron_right_sharp,
                        color: Colors.white,
                      ),
                    ),
                    SwitchListTile(
                      inactiveTrackColor: orange.withOpacity(0.4),
                      activeColor: orange,
                      value: _switchedOff,
                      onChanged: (bool value) {
                        setState(() {
                          _switchedOff = value;
                        });
                      },
                      title: Text(
                        'Offline Reading',
                        style: GoogleFonts.rokkitt(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Container(
                        height: 1,
                        width: 400,
                        color: grey.withOpacity(0.4),
                      ),
                    ),
                    Text(
                      'Account',
                      style: GoogleFonts.rokkitt(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Personal Information',
                        style: GoogleFonts.rokkitt(
                            color: Colors.white, fontSize: 17),
                      ),
                      trailing: const Icon(
                        Icons.chevron_right_sharp,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Country',
                        style: GoogleFonts.rokkitt(
                            color: Colors.white, fontSize: 17),
                      ),
                      trailing: const Icon(
                        Icons.chevron_right_sharp,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'favorite Recipes',
                        style: GoogleFonts.rokkitt(
                            color: Colors.white, fontSize: 17),
                      ),
                      trailing: const Icon(
                        Icons.chevron_right_sharp,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(const WelcomeScreen());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: orange,
                          ),
                          height: 40,
                          width: 80,
                          child: Center(
                            child: Text(
                              'LOGOUT',
                              style: GoogleFonts.rokkitt(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: boxOrange.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10)),
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
                          color: orange, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
