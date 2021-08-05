import 'package:flutter/material.dart';

import '../../../constants/style.dart';
import '../../../widgets/custom_text.dart';
import 'bar_chart.dart';
import 'revenue_data.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 6),
            color: lightGrey.withOpacity(0.1),
            blurRadius: 12,
          ),
        ],
        border: Border.all(color: lightGrey, width: 0.5),
      ),
      child: Column(
        children: [
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: 'Revenue Chart',
                  size: 20,
                  fontWeight: FontWeight.bold,
                  color: lightGrey,
                ),
                Container(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 1,
            color: lightGrey,
          ),
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    RevenueData(
                      title: 'Today',
                      amount: '23',
                    ),
                    RevenueData(
                      title: 'Last 7 days',
                      amount: '150',
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    RevenueData(
                      title: 'Last 30 days',
                      amount: '1,203',
                    ),
                    RevenueData(
                      title: 'Last 12 months',
                      amount: '12,087',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
