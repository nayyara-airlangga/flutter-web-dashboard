import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_text.dart';
import '../../constants/controllers.dart';
import '../../helpers/responsive_widget.dart';
import 'widgets/drivers_table.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: ResponsiveWidget.isSmallScreen(context) ? 56 : 12,
                ),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              DriversTable(),
            ],
          ),
        ),
      ],
    );
  }
}
