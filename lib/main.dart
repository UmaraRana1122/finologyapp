import 'package:finologyapp/finology/VerifyScreen.dart';
import 'package:finologyapp/finology/add_scree.dart';
import 'package:finologyapp/finology/bottom.dart';
import 'package:finologyapp/finology/chart_column.dart';
import 'package:finologyapp/finology/createccount.dart';
import 'package:finologyapp/finology/dashboard.dart';
import 'package:finologyapp/finology/makemoney.dart';
import 'package:finologyapp/finology/managemoney.dart';
import 'package:finologyapp/finology/numberScreen.dart';
import 'package:finologyapp/finology/otpScreen.dart';
import 'package:finologyapp/finology/signupScreen.dart';
import 'package:finologyapp/finology/splashScreen.dart';
import 'package:finologyapp/finology/statistics.dart';
import 'package:finologyapp/model/add_data.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'finology/bar_chart.dart';
import 'model/add_data.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: Bottom(
              // verificationId: '',
              ),
        );
      },
    );
  }
}
