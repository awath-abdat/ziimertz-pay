import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PulseEmtpyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonImageView(
            svgPath: ImageConstant.imgGroup19618,
            height: getVerticalSize(
              96.00,
            ),
            width: getHorizontalSize(
              86.00,
            ),
          ),
          Container(
            width: getHorizontalSize(
              197.00,
            ),
            margin: getMargin(
              top: 30,
            ),
            child: Text(
              "Input your phone number above\nto see exist product",
              maxLines: null,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.gray900,
                fontSize: getFontSize(
                  14,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w400,
                height: 1.57,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
