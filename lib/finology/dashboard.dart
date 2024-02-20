import 'package:finologyapp/finology/VerifyScreen.dart';
import 'package:finologyapp/widget/refeerel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../controller/authController.dart';
import '../widget/textwidget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController _) => Scaffold(
              resizeToAvoidBottomInset: false,
              body: SafeArea(
                  child: ValueListenableBuilder(
                      valueListenable: _.box.listenable(),
                      builder: (context, value, child) {
                        return CustomScrollView(
                          slivers: [
                            SliverToBoxAdapter(
                              child: head(),
                            ),
                            SliverToBoxAdapter(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    textWidget("Transaction History",
                                        color: Colors.black,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600),
                                    Spacer(),
                                    textWidget("See all",
                                        color: Colors.black,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600),
                                  ],
                                ),
                              ),
                            ),
                            SliverList(
                                delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                return ListTile(
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        'assets/images/${_.geter()[index].image!}',
                                        height: 40,
                                      ),
                                    ),
                                    title: textWidget(_.geter()[index].name!,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600),
                                    subtitle: textWidget(_.geter()[index].time!,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600),
                                    trailing: Text(
                                      _.geter()[index].fee!,
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600,
                                          color: _.geter()[index].buy!
                                              ? Colors.red
                                              : Colors.green),
                                    ));
                              },
                              childCount: _.geter().length,
                            ))
                          ],
                        );
                      })),
            ));
  }

  Widget head() {
    return Stack(children: [
      Image.asset("assets/icons/ellipse.png"),
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textWidget("Good Afternoon ",
                                color: Color(0xffBEE4E2),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                            textWidget("Enjellin Morgeana ",
                                color: Color(0xffBEE4E2),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500),
                          ],
                        ),
                        InkWell(
                            onTap: () {
                              Get.to(() => VerifyIdentity());
                            },
                            child: Icon(
                              Icons.notification_add,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(
                  child: Container(
                      height: 24.h,
                      // width: 94.w,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff81c0bd),
                              Color(0xff80bfbb),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  textWidget("TOTAL BALANCE ",
                                      color: Color(0xffBEE4E2),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700),
                                  Icon(
                                    Icons.more_horiz_outlined,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  textWidget("\$3,298",
                                      color: Color(0xffFCFAF2),
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w600),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                refferCircle(Icons.arrow_downward),
                                textWidget("Income",
                                    color: Color(0xffFCFAF2),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                                Spacer(),
                                refferCircle(Icons.arrow_upward),
                                textWidget("Expenses",
                                    color: Color(0xffFCFAF2),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  textWidget("\$5,450",
                                      color: Color(0xffFCFAF2),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600),
                                  textWidget("\$450",
                                      color: Color(0xffFCFAF2),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))),
            ],
          ),
        ),
      ),
    ]);
  }
}
