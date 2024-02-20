import 'package:finologyapp/finology/add_scree.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controller/authController.dart';
import 'dashboard.dart';
import 'statistics.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List screen = [
    DashboardScreen(),
    StatisticsScreen(),
    DashboardScreen(),
    StatisticsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController _) => Scaffold(
            body: screen[_.index_color],
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AddScreen()));
              },
              child: Icon(Icons.add),
              backgroundColor: Color(0xff368983),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              height: 6.h,
              shape: CircularNotchedRectangle(),
              child: Padding(
                padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _.index_color = 0;
                        _.update();
                      },
                      child: Icon(
                        Icons.home,
                        size: 35,
                        color: _.index_color == 0
                            ? Color(0xff368983)
                            : Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _.index_color = 1;
                        _.update();
                      },
                      child: Icon(
                        Icons.bar_chart_outlined,
                        size: 35,
                        color: _.index_color == 1
                            ? Color(0xff368983)
                            : Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _.index_color = 2;
                        _.update();
                      },
                      child: Icon(
                        Icons.account_balance_wallet_outlined,
                        size: 35,
                        color: _.index_color == 2
                            ? Color(0xff368983)
                            : Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _.index_color = 3;
                        _.update();
                      },
                      child: Icon(
                        Icons.person_2_outlined,
                        size: 35,
                        color: _.index_color == 3
                            ? Color(0xff368983)
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
