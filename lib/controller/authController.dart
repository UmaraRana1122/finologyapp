import 'package:finologyapp/model/money.dart';
import 'package:finologyapp/finology/dashboard.dart';
import 'package:finologyapp/finology/statistics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../model/add_data.dart';

class AuthController extends GetxController {
  int currentindex = 0;
  int selectedindex = 0;
  List day = ['Day', 'Week', 'Month', 'Year'];
  int index_color = 0;
var history;
  // List to store your Money objects
  late List<Money> moneyList;

  final TextEditingController explainC = TextEditingController();
  final TextEditingController amount = TextEditingController();
  FocusNode am = FocusNode();
  FocusNode ex = FocusNode();

  @override
  void onInit() {
    super.onInit();
    // Initialize Hive
    Hive.initFlutter();
    // Register the adapter for Add_data
    // Hive.registerAdapter(AddDataAdapter());
    // Open the Hive box
    Hive.openBox<Add_data>('data');

    // Initialize the list of Money objects
    moneyList = geter();

    ex.addListener(() {
      update();
    });
  }

  List Screen = [
    DashboardScreen(),
    StatisticsScreen(),
    DashboardScreen(),
    StatisticsScreen(),
  ];

  final box = Hive.box<Add_data>('data');

  DateTime date = DateTime.now();
  Map<String, dynamic>? selectedValue;
  Map<String, dynamic>? selectedValue1;

  final List<Map<String, dynamic>> item1 = [
    {'label': 'Income'},
    {'label': 'Expense'}
  ];

  final List<Map<String, dynamic>> items = [
    {'label': 'Food', 'image': 'assets/icons/pizza.png'},
    {'label': 'Transfer', 'image': 'assets/icons/tran.png'},
    {'label': 'Transportation', 'image': 'assets/icons/learn.png'},
    {'label': 'Education', 'image': 'assets/icons/shipped.png'},
  ];

  // Method to initialize your list of Money objects
  List<Money> geter() {
    Money upwork = Money();
    upwork.name = 'Upwork';
    upwork.fee = '650';
    upwork.time = 'today';
    upwork.image = 'up.png';
    upwork.buy = false;
    Money starbucks = Money();
    starbucks.name = 'Starbucks';
    starbucks.fee = '15';
    starbucks.time = 'Dec, 25, 2023';
    starbucks.image = 'buck.png';
    starbucks.buy = false;
    Money transfer = Money();
    transfer.name = 'Transfer';
    transfer.fee = '100';
    transfer.time = 'Jan, 20, 2024';
    transfer.image = 'trans.png';
    transfer.buy = false;
    return [
      upwork,
      starbucks,
      transfer,
      upwork,
      starbucks,
      transfer,
      upwork,
      starbucks,
      transfer
    ];
  }
}
