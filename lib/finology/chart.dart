import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: double.infinity,
        height: 300,
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: <SplineSeries<SalesData, String>>[
            SplineSeries<SalesData, String>(
              color: Color.fromARGB(255, 47, 125, 121),
              width: 3,
              dataSource: <SalesData>[
                SalesData(100, 'mon'),
                SalesData(20, 'tue'),
                SalesData(40, 'wed'),
                SalesData(15, 'thu'),
                SalesData(5, 'fri'),
                SalesData(4, 'sat'),
                SalesData(10, 'sun'),
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales,
            )
          ],
        ),
      );
    
  }
}

class SalesData {
  SalesData(this.sales, this.year);
  final String year;
  final int sales;
}
