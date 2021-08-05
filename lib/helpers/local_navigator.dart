import 'package:flutter/material.dart';

import '../routing/routes.dart';
import '../routing/router.dart';
import '../constants/controllers.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverviewPageRoute,
      onGenerateRoute: generateRoute,
    );
