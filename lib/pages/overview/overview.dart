import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/controllers.dart';
import '../../helpers/responsive_widget.dart';
import '../../widgets/custom_text.dart';
import 'widgets/overview_cards_layout_large.dart';
import 'widgets/overview_cards_layout_medium.dart';
import 'widgets/overview_cards_layout_small.dart';
import 'widgets/revenue_section_large.dart';
import 'widgets/revenue_section_small.dart';
import 'widgets/available_drivers.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({
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
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomSize(context))
                  OverviewCardsLayoutMedium()
                else
                  OverviewCardsLayoutLarge()
              else
                OverviewCardsLayoutSmall(),
              if (!ResponsiveWidget.isSmallScreen(context))
                RevenueSectionLarge()
              else
                RevenueSectionSmall(),
              AvailableDrivers(),
            ],
          ),
        ),
      ],
    );
  }
}
