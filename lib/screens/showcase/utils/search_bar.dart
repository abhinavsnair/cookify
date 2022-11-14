import 'package:flutter/material.dart';

import '../../../utilities/utils.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 58, 58, 58),
              borderRadius: BorderRadius.circular(10),
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
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: boxOrange.withOpacity(0.4),
            borderRadius: BorderRadius.circular(10),
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
