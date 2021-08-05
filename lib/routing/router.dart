import 'package:flutter/material.dart';

import '../pages/overview/overview.dart';
import '../pages/drivers/drivers.dart';
import '../pages/clients/clients.dart';
import 'routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverviewPageRoute:
      return _getPageRoute(OverviewPage());

    case DriversPageRoute:
      return _getPageRoute(DriversPage());

    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());

    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) =>
    MaterialPageRoute(builder: (context) => child);
