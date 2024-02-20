import 'package:finologyapp/widget/buttonwidget.dart';
import 'package:finologyapp/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MakeMoney extends StatelessWidget {
  const MakeMoney({Key? key}) : super(key: key);

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
            textWidget("Invest", fontSize: 24.sp, fontWeight: FontWeight.w700),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  child: Align(
                      child: Icon(
                    Icons.arrow_back,
                    size: 3.h,
                  )),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Container(
                  height: 5.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      color: Color(0xff31A062),
                      borderRadius: BorderRadius.circular(15)),
                  child: Align(
                      child: Icon(
                    Icons.arrow_forward,
                    size: 3.h,
                  )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
