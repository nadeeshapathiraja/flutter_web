import 'package:flutter/material.dart';
import 'package:flutter_webtest/constants/colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
      ],
    );
  }
}
