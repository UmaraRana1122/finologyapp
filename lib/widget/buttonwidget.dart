import 'package:finologyapp/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget buttonConatiner(String text, Color isColor, Color isColor2,
    {Function? ontap}) {
  return Container(
    height: 7.h,
    width: 95.w,
    decoration:
        BoxDecoration(color: isColor, borderRadius: BorderRadius.circular(25)),
    child: Align(
        child: textWidget(text,
            color: isColor2, fontSize: 17.sp, fontWeight: FontWeight.w700)),
  );
}
