import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget refferCircle(
  IconData icon,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      radius: 1.3.h,
      backgroundColor: Colors.white,
      child: CircleAvatar(
          radius: 1.1.h,
          backgroundColor: Color(0xff81c0bd),
          child: Icon(
            icon,
            size: 1.5.h,
            color: Colors.white,
          )),
    ),
  );
}
