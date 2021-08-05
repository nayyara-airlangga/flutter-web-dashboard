import 'package:flutter/material.dart';

import '../widgets/side_menu.dart';
import 'widgets/large_screen.dart';
import 'widgets/small_screen.dart';
import 'widgets/top_nav.dart';
import 'helpers/responsive_widget.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({
    Key key,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(
        context: context,
        key: scaffoldKey,
      ),
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
