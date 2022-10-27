import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class PulseRecentItemWidget extends StatelessWidget {
  PulseRecentItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 16.0,
        bottom: 16.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CommonImageView(
                  svgPath: ImageConstant.imgG4109,
                  height: getVerticalSize(
                    22.00,
                  ),
                  width: getHorizontalSize(
                    23.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                  ),
                  child: Text(
                    "083391832193 (Vandarani)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
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
          ),
          Padding(
            padding: getPadding(
              left: 115,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgClose1,
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
