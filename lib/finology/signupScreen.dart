import 'package:finologyapp/widget/buttonwidget.dart';
import 'package:finologyapp/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            children: [
              Spacer(),
              Center(
                child: Image.asset(
                  "assets/images/location.png",
                  height: 30.h,
                ),
              ),
              textWidget("Stay on top of your finance with us.",
                  fontWeight: FontWeight.w700, fontSize: 22.sp),
              SizedBox(
                height: 2.h,
              ),
              textWidget(
                  "We are your new financial Advisors to recommend the best investments for you. ",
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  color: Color(0xff4F4F4F)),
              SizedBox(
                height: 6.h,
              ),
              buttonConatiner(
                  "Create Account", Color(0xff31A062), Color(0xffffffff)),
              SizedBox(
                height: 2.h,
              ),
              textWidget("Login",
                  fontWeight: FontWeight.w700,
                  fontSize: 18.sp,
                  color: Color(0xff31A062)),
              Spacer(
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
