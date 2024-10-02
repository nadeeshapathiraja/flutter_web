import 'package:flutter/material.dart';
import 'package:flutter_webtest/constants/colors.dart';

import '../../../utils/responsive.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktopSize = Responsive.isDesktop(context);
    return Row(
      children: [
        if (!isDesktopSize)
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 10, right: 20),
              child: Icon(
                Icons.menu,
                color: greyColor,
                size: 25,
              ),
            ),
          ),
        Expanded(
          child: TextField(
            style: const TextStyle(
              color: greyColor,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: cardBgColor,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              label: const Text(""),
              labelStyle: const TextStyle(
                color: greyColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  12,
                ),
                borderSide: const BorderSide(
                  color: primaryColor,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 5),
              hintText: "Search",
              hintStyle: const TextStyle(
                color: greyColor,
                fontWeight: FontWeight.bold,
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: greyColor,
                size: 21,
              ),
            ),
          ),
        ),
        if (!isDesktopSize)
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/avatar.jpg",
                  width: 25,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
