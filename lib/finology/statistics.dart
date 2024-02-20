import 'package:finologyapp/model/listdata.dart';
import 'package:finologyapp/finology/chart.dart';
import 'package:finologyapp/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controller/authController.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController _) => Scaffold(
              body: SafeArea(
                  child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 1.h,
                          ),
                          textWidget("Statistics", fontWeight: FontWeight.w700),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ...List.generate(4, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    _.index_color = index;
                                    _.update();
                                  },
                                  child: Container(
                                    height: 4.h,
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                        color: _.index_color == index
                                            ? Color.fromARGB(225, 47, 125, 121)
                                            : Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Align(
                                      child: Text(
                                        _.day[index],
                                        style: TextStyle(
                                            color: _.index_color == index
                                                ? Colors.white
                                                : Color.fromARGB(
                                                    225, 47, 125, 121),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                );
                              })
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 4.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      " Expense",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.arrow_downward_rounded,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Chart(),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Top Spending",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w800),
                              ),
                              Icon(
                                Icons.swap_vert,
                                size: 25,
                                color: Colors.grey,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                      delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return ListTile(
                        leading: Image.asset(
                          "assets/images/${geter_top()[index].image!}",
                          height: 4.h,
                        ),
                        title: Text(geter_top()[index].name!),
                        subtitle: Text(geter_top()[index].time!),
                        trailing: Text(geter_top()[index].fee!),
                      );
                    },
                    childCount: geter_top().length,
                  ))
                ],
              )),
            ));
  }
}
