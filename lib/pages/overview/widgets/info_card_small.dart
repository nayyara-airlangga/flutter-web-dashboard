import 'package:flutter/material.dart';

import '../../../constants/style.dart';
import '../../../widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  const InfoCardSmall({
    Key key,
    this.title,
    this.value,
    // this.topColor,
    this.isActive = false,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String value;
  // final Color topColor;
  final bool isActive;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive ? active : lightGrey,
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                size: 24,
                fontWeight: FontWeight.w300,
                color: isActive ? active : lightGrey,
              ),
              CustomText(
                text: value,
                size: 24,
                fontWeight: FontWeight.bold,
                color: isActive ? active : lightGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
