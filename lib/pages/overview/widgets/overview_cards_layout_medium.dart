import 'package:flutter/material.dart';

import 'info_card.dart';

class OverviewCardsLayoutMedium extends StatelessWidget {
  const OverviewCardsLayoutMedium({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: 'Rides in progress',
              value: '7',
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: 'Packages delivered',
              value: '17',
              onTap: () {},
              topColor: Colors.lightGreen,
            ),
          ],
        ),
        SizedBox(height: _width / 64),
        Row(
          children: [
            InfoCard(
              title: 'Cancelled deliveries',
              value: '3',
              onTap: () {},
              topColor: Colors.redAccent,
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: 'Scheduled deliveries',
              value: '4',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
