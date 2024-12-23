import 'package:flutter/cupertino.dart';

Container buildIcon(IconData icon, Color iconColor, Color backgroundColor) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: backgroundColor.withOpacity(0.4)),
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Icon(icon, color: iconColor),
    ),
  );
}