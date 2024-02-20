import 'package:finologyapp/controller/authController.dart';
import 'package:finologyapp/widget/buttonwidget.dart';
import 'package:finologyapp/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VerifyIdentity extends StatelessWidget {
  const VerifyIdentity({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController _) => Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      textWidget("Verify Identity",
                          fontWeight: FontWeight.w700, fontSize: 22.sp),
                      SizedBox(
                        height: 5.h,
                      ),
                      textWidget(
                          "Please select your contact details we will send a verification code to verify your identity",
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp,
                          color: Color(0xff4F4F4F)),
                      SizedBox(
                        height: 2.h,
                      ),
                      InkWell(
                        onTap: () {
                          _.currentindex = 0;
                          _.update();
                        },
                        child: Container(
                            height: 22.h,
                            width: 43.w,
                            decoration: BoxDecoration(
                                color: _.currentindex == 0
                                    ? Color(0xff00B907)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(27),
                                border: Border.all(width: .3.w)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 3.5.h),
                              child: Column(
                                children: [
                                  Icon(Icons.mail),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  textWidget("Email",
                                      color: Colors.black,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w500),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      InkWell(
                        onTap: () {
                          _.currentindex = 1;
                          _.update();
                        },
                        child: Container(
                            height: 22.h,
                            width: 43.w,
                            decoration: BoxDecoration(
                                color: _.currentindex == 1
                                    ? Color(0xff00B907)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(27),
                                border: Border.all(width: .3.w)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 3.5.h),
                              child: Column(
                                children: [
                                  Icon(Icons.mobile_friendly),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  textWidget("Mobile",
                                      color: Colors.black,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w500),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      buttonConatiner(
                          "Sign Up Now", Color(0xff31A062), Color(0xffffffff)),
                          
                    ],
                  ),
                ),
              ),
            ));
  }
}
