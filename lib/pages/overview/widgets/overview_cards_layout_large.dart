import 'package:flutter/material.dart';

import 'info_card.dart';

class OverviewCardsLayoutLarge extends StatelessWidget {
  const OverviewCardsLayoutLarge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        SizedBox(width: _width / 64),
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
    );
  }
}
