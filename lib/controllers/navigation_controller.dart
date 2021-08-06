import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  static NavigationController instance = Get.find();
  final GlobalKey<NavigatorState> navigationKey = GlobalKey();

  Future<dynamic> navigateTo(String routeName) =>
      navigationKey.currentState.pushReplacementNamed(routeName);

  dynamic goBack() => navigationKey.currentState.pop();
}
