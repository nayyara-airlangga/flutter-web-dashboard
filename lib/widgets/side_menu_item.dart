import 'package:flutter/material.dart';

import '../helpers/responsive_widget.dart';
import 'vertical_menu_item.dart';
import 'horizontal_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({
    Key key,
    this.itemName,
    this.onTap,
  }) : super(key: key);

  final String itemName;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context))
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    return HorizontalMenuItem(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
