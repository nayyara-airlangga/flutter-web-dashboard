import 'package:flutter/material.dart';

import '../../../constants/style.dart';

class RevenueData extends StatelessWidget {
  const RevenueData({
    Key key,
    this.title,
    this.amount,
  }) : super(key: key);

  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: '$title\n\n',
              style: TextStyle(
                color: lightGrey,
                fontSize: 16,
              ),
            ),
            TextSpan(
              text: '\$ $amount',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
