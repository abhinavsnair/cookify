import 'package:cookify/screens/home/utils/google_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../utilities/constants.dart';

class LocationBox extends StatelessWidget {
  const LocationBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          const MapView(),
        );
      },
      child: Container(
        height: 35.h,
        width: 35.h,
        decoration:  BoxDecoration(
          color: boxOrange.withOpacity(0.6),
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.location_on_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
