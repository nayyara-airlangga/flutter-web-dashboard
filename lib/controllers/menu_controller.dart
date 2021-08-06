import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/style.dart';
import '../routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  RxString activeItem = OverviewPageDisplayName.obs;
  RxString hoverItem = ''.obs;

  void changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  void onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  bool isActive(String itemName) => activeItem.value == itemName;

  bool isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverviewPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);

      case DriversPageDisplayName:
        return _customIcon(Icons.drive_eta, itemName);

      case ClientsPageDisplayName:
        return _customIcon(Icons.people_alt_outlined, itemName);

      case AuthenticationDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);

      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName))
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey);
  }
}
