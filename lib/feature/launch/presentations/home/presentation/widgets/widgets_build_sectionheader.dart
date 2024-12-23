import 'package:flutter/material.dart';
import 'package:home_rent/core/config/themes/colors.dart';

buildSectionHeader(String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      Text("See more", style: TextStyle(color: textColor)),
    ],
  );
}