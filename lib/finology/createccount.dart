import 'package:finologyapp/widget/buttonwidget.dart';
import 'package:finologyapp/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: textWidget("Create an Account",
                    fontWeight: FontWeight.w700, fontSize: 22.sp),
              ),
              Center(
                child: textWidget("Invest and double your income now",
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                    color: Color(0xff4F4F4F)),
              ),
              SizedBox(
                height: 8.h,
              ),
              TextField(
                cursorColor: Color(0xff4B5768),
                // controller: _.email,
                // onSubmitted: ((value) {
                //   _.email.text = value;
                // }),
                style: TextStyle(color: Color(0xffdcdcdd)),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff828282), width: .3.w),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff4B5768),
                          width: .1.w,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Full Name',
                    hintStyle: GoogleFonts.lora(
                        textStyle: TextStyle(
                            color: Color(0xff828282),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300))),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextField(
                cursorColor: Color(0xff4B5768),
                // controller: _.email,
                // onSubmitted: ((value) {
                //   _.email.text = value;
                // }),
                style: TextStyle(color: Color(0xffdcdcdd)),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff828282), width: .3.w),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff4B5768),
                          width: .1.w,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Email Address',
                    hintStyle: GoogleFonts.lora(
                        textStyle: TextStyle(
                            color: Color(0xff828282),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300))),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextField(
                cursorColor: Color(0xff4B5768),
                // controller: _.email,
                // onSubmitted: ((value) {
                //   _.email.text = value;
                // }),
                style: TextStyle(color: Color(0xffdcdcdd)),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff828282), width: .3.w),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff4B5768),
                          width: .1.w,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.lora(
                        textStyle: TextStyle(
                            color: Color(0xff828282),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300))),
              ),
              SizedBox(
                height: 4.h,
              ),
              buttonConatiner(
                  "Create Account", Color(0xff31A062), Color(0xffffffff)),
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: textWidget("Already have an account?",
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                    color: Color(0xff31A062)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
