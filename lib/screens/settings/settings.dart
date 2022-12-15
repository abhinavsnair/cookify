import 'package:cookify/utilities/constants.dart';
import 'package:cookify/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
 
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0).w,
            child: ListView(
              children: [
                const ProfileBox(),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 440.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 128, 127, 127)
                        .withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0).w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Option',
                          style: GoogleFonts.rokkitt(
                        
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
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
                                fontSize: 13.sp),
                          ),
                        ),
                        ListTile(
                          leading: Text(
                            'Language',
                            style: GoogleFonts.rokkitt(
                             
                              fontSize: 17.sp,
                            ),
                          ),
                          trailing: Icon(
                            Icons.chevron_right_sharp,
                        
                            size: 20.h,
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
                         
                              fontSize: 13.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.w),
                          child: Container(
                            height: 1.h,
                            width: 400.w,
                            color: grey.withOpacity(0.4),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Account',
                          style: GoogleFonts.rokkitt(
                       
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        ListTile(
                          leading: Text(
                            'Personal Information',
                            style: GoogleFonts.rokkitt(
                         
                              fontSize: 17.sp,
                            ),
                          ),
                          trailing: Icon(
                            Icons.chevron_right_sharp,
                    
                            size: 20.h,
                          ),
                        ),
                        ListTile(
                          leading: Text(
                            'Country',
                            style: GoogleFonts.rokkitt(
                             fontSize: 17.sp),
                          ),
                          trailing: Icon(
                            Icons.chevron_right_sharp,
                            
                            size: 20.h,
                          ),
                        ),
                        ListTile(
                          leading: Text(
                            'favorite Recipes',
                            style: GoogleFonts.rokkitt(
                            fontSize: 17.sp),
                          ),
                          trailing: Icon(
                            Icons.chevron_right_sharp,
                           
                            size: 20.h,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(
                                const WelcomeScreen(),
                                transition: Transition.fadeIn,
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.h),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: orange,
                                ),
                                height: 40.h,
                                width: 80.w,
                                child: Center(
                                  child: Text(
                                    'LOGOUT',
                                    style: GoogleFonts.rokkitt(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
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
