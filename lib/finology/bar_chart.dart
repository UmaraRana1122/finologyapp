import 'package:finologyapp/finology/chart_column.dart';
import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  const BarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [ChartColumn()],
          ),
        ),
      ),
    );
  }
}
