import 'package:flutter/material.dart';

import 'info_card_small.dart';

class OverviewCardsLayoutSmall extends StatelessWidget {
  const OverviewCardsLayoutSmall({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Rides in progress',
            value: '7',
            onTap: () {},
            isActive: true,
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: 'Packages delivered',
            value: '17',
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: 'Cancelled deliveries',
            value: '3',
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: 'Scheduled deliveries',
            value: '4',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
