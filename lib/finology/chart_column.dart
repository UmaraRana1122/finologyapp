import 'package:finologyapp/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartColumn extends StatelessWidget {
  const ChartColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white54,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget("Vertical Bar",
                        fontSize: 16.sp, fontWeight: FontWeight.w600),
                    textWidget("Statistics of the month",
                        color: Colors.grey,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            Row(
              children: [
                Container(
                  height: 1.5.h,
                  width: 7.w,
                  decoration: BoxDecoration(
                      color: Color(0xff7209B7),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: 10,
                ),
                textWidget("Data one",
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 1.5.h,
                  width: 7.w,
                  decoration: BoxDecoration(
                      color: Color(0xffF72585),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: 10,
                ),
                textWidget("Data two",
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            SfCartesianChart(
              plotAreaBackgroundColor: Colors.transparent,
              margin: EdgeInsets.all(0),
              borderColor: Colors.transparent,
              borderWidth: 0,
              plotAreaBorderWidth: 0,
              enableSideBySideSeriesPlacement: false,
              primaryXAxis: CategoryAxis(
                axisLine: AxisLine(width: 0.5),
                majorGridLines: MajorGridLines(width: 0),
                majorTickLines: MajorTickLines(width: 0),
                crossesAt: 0,
              ),
              primaryYAxis: NumericAxis(
                isVisible: false,
                minimum: -1,
                maximum: 2,
                interval: 0.5,
              ),
              series: <CartesianSeries>[
                ColumnSeries<ChartColumnData, String>(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  dataSource: chartData,
                  width: 1,
                  color: Color(0xff7209B7),
                  xValueMapper: (ChartColumnData data, _) => data.x,
                  yValueMapper: (ChartColumnData data, _) => data.y,
                ),
                ColumnSeries<ChartColumnData, String>(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  dataSource: chartData,
                  width: 1,
                  color: Color(0xffF72585),
                  xValueMapper: (ChartColumnData data, _) => data.x,
                  yValueMapper: (ChartColumnData data, _) => data.y1,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChartColumnData {
  ChartColumnData(this.x, this.y, this.y1);
  final String x;
  final double? y;
  final double? y1;
}

final List<ChartColumnData> chartData = <ChartColumnData>[
  ChartColumnData("Mo", -0.3, 1.7),
  ChartColumnData("Tu", -0.5, 0.4),
  ChartColumnData("We", -0.4, 1),
  ChartColumnData("Th", -0.45, 0.7),
  ChartColumnData("Fr", -0.9, 0.8),
  ChartColumnData("St", -0.6, 0.9),
  ChartColumnData("Su", -0.5, 1),
];
