import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:finologyapp/widget/buttonwidget.dart';
import 'package:finologyapp/widget/namewidget.dart';
import 'package:finologyapp/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controller/authController.dart';
import '../model/add_data.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController _) => Scaffold(
              body: SafeArea(
                  child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  backgroundcontainer(context),
                  Positioned(
                    child: Container(
                      height: 600,
                      width: 349,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.transparent,
                                  border:
                                      Border.all(width: 1, color: Colors.grey)),
                              child: DropdownButton<Map<String, dynamic>>(
                                value: _.selectedValue,
                                isExpanded: true,
                                hint: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    'Name',
                                    style: TextStyle(
                                      color: Color(0xff808B95),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                items: _.items.map((item) {
                                  return DropdownMenuItem<Map<String, dynamic>>(
                                    value: item,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          item['image'],
                                          width: 20,
                                          height: 20,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          item['label'],
                                          style: TextStyle(
                                            color: Color(0xff808B95),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  _.update();
                                  _.selectedValue = value;
                                  print('Selected item: $value');
                                },
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            TextField(
                              focusNode: _.ex,
                              controller: _.explainC,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  labelText: "Explain",
                                  labelStyle: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.grey.shade500),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          width: 2, color: Color(0xffC5C5C5))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          width: 2, color: Color(0xffC5C5C5)))),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            TextField(
                              keyboardType: TextInputType.number,
                              focusNode: _.am,
                              controller: _.amount,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  labelText: "Amount",
                                  labelStyle: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.grey.shade500),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          width: 2, color: Color(0xffC5C5C5))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          width: 2, color: Color(0xffC5C5C5)))),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                              ),
                              child: DropdownButton<Map<String, dynamic>>(
                                value: _.selectedValue1,
                                isExpanded: true,
                                hint: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Text(
                                    'How?',
                                    style: TextStyle(
                                      color: Color(0xff808B95),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                items: _.item1.map((item) {
                                  return DropdownMenuItem<Map<String, dynamic>>(
                                    value: item,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        item['label'],
                                        style: TextStyle(
                                          color: Color(0xff808B95),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  _.update();
                                  _.selectedValue1 = value;
                                  print('Selected item: $value');
                                },
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xffC5C5C5),
                                border:
                                    Border.all(width: 2, color: Colors.grey),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  DateTime? newDate = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(2019),
                                    lastDate: DateTime(2021),
                                    initialDate:
                                        DateTime.now().isBefore(DateTime(2021))
                                            ? DateTime.now()
                                            : DateTime(2021),
                                  );
                                  if (newDate == null) return;
                                  _.update();
                                  _.date = newDate;
                                },
                                child: Text(
                                  'Date:${_.date.year} /${_.date.day} /${_.date.month}',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16.sp),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                var add = Add_data(
                                    _.selectedValue1![
                                        'label'], // Assuming 'label' is the field that contains the name
                                    _.amount.text,
                                    _.date,
                                    _.explainC.text,
                                    _.selectedValue![
                                        'label'] // Assuming 'label' is the field that contains the name
                                    );
                                _.box.add(add);
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xff368983),
                                ),
                                width: 120,
                                height: 50,
                                child: Text(
                                  'Save',
                                  style: TextStyle(
                                    fontFamily: 'f',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
            ));
  }
  
}
