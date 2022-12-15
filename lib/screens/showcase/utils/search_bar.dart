import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilities/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Container(
            height: 40.h,
            width: 260.w,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 58, 58, 58),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: grey,
                  ),
                  hintText: 'search',
                  hintStyle: TextStyle(color: grey),
                  border: InputBorder.none),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: boxOrange.withOpacity(0.4),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: const Icon(
            Icons.restaurant_menu,
            color: orange,
          ),
        )
      ],
    );
  }
}
