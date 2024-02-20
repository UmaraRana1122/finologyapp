import 'package:finologyapp/widget/buttonwidget.dart';
import 'package:finologyapp/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ManageMoney extends StatelessWidget {
  const ManageMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images/invest.png",
                height: 40.h,
              ),
            ),
            textWidget("Money Mangement",
                fontSize: 22.sp, fontWeight: FontWeight.w700),
            Spacer(),
            Container(
              height: 6.h,
              width: 60.w,
              decoration: BoxDecoration(
                  color: Color(0xff31A062),
                  borderRadius: BorderRadius.circular(15)),
              child: Align(
                  child: Icon(
                Icons.arrow_back,
                size: 3.h,
              )),
            )
          ],
        ),
      ),
    );
  }
}
