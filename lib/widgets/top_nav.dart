import 'package:flutter/material.dart';

import '../constants/style.dart';
import '../helpers/responsive_widget.dart';
import '../widgets/custom_text.dart';

AppBar topNavigationBar({
  BuildContext context,
  GlobalKey<ScaffoldState> key,
}) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    'icons/logo.png',
                    width: 28,
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: () => key.currentState.openDrawer(),
              icon: Icon(Icons.menu),
            ),
      leadingWidth: 45,
      elevation: 0,
      title: Expanded(
        child: Row(
          children: <Widget>[
            Visibility(
              child: CustomText(
                text: 'Dash',
                color: lightGrey,
                fontWeight: FontWeight.bold,
                size: 20,
              ),
            ),
            Expanded(
              child: Container(),
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                color: dark.withOpacity(0.7),
              ),
              onPressed: () {},
            ),
            Stack(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: dark.withOpacity(0.7),
                  ),
                ),
                Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: light,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 1,
              height: 22,
              color: lightGrey,
            ),
            const SizedBox(width: 12),
            FittedBox(
              child: CustomText(
                text: 'Nayyara Airlangga',
                color: lightGrey,
              ),
            ),
            const SizedBox(width: 4),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: light,
                  child: Icon(
                    Icons.person_outline,
                    color: dark,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: light,
    );
