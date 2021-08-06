import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/style.dart';
import '../constants/controllers.dart';
import '../helpers/responsive_widget.dart';
import '../routing/routes.dart';
import '../widgets/custom_text.dart';
import '../widgets/side_menu_item.dart';
import '../pages/authentication/authentication.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset('icons/logo.png'),
                    ),
                    Flexible(
                      child: CustomText(
                        text: 'Dash',
                        size: 20,
                        fontWeight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: _width / 48),
                  ],
                ),
              ],
            ),
          Divider(color: lightGrey.withOpacity(0.1)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map(
                  (itemName) => SideMenuItem(
                    itemName: itemName == AuthenticationPageRoute
                        ? 'Log Out'
                        : itemName,
                    onTap: () {
                      if (itemName == AuthenticationPageRoute) {
                        Get.offAll(() => AuthenticationPage());
                      }
                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItemTo(itemName);
                        if (ResponsiveWidget.isSmallScreen(context)) Get.back();
                        navigationController.navigateTo(itemName);
                      }
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
