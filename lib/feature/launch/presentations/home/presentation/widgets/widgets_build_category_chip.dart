import 'package:flutter/material.dart';
import 'package:home_rent/core/config/themes/background_colors.dart';
import 'package:home_rent/core/config/themes/colors.dart';

 buildCategoryChip(String label, bool isSelected) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        gradient: isSelected ? gradientBackground() : null,
        color: !isSelected ? colorBg : null,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        label,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black,fontSize: 15),
      ),
    ),
  );
}
