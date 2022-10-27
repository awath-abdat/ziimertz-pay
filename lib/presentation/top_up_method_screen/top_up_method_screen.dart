import '../topupmethod_page/topupmethod_page.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class TopUpMethodScreen extends StatelessWidget {
  TopUpMethodPage currentWidget = TopUpMethodPage.topupmethod;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: getVerticalSize(
                  302.00,
                ),
                width: size.width,
                child: getCurrentWidget(
                  currentWidget,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///Handling View based on bottom click actions
  Widget getCurrentWidget(TopUpMethodPage currentWidget) {
    switch (currentWidget) {
      case TopUpMethodPage.topupmethod:
        return TopupmethodPage();
      default:
        return TopupmethodPage();
    }
  }
}
