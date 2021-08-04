import 'package:flutter/material.dart';

import 'widgets/large_screen.dart';
import 'widgets/small_screen.dart';
import 'helpers/responsive_widget.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
