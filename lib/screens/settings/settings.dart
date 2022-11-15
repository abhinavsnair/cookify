import 'package:cookify/utilities/utils.dart';
import 'package:cookify/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/feel_free_box.dart';
import 'utils/profile_box.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isSwitchedOn = false;
  bool _switchedOff = true;

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
        backgroundColor: bcolor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const ProfileBox(),
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
                            Get.to(
                              const WelcomeScreen(),
                              transition: Transition.fadeIn,
                            );
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
                const FeelFreeBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
