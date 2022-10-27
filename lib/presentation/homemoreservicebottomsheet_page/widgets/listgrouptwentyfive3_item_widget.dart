import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listgrouptwentyfive3ItemWidget extends StatelessWidget {
  Listgrouptwentyfive3ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 13.0,
          bottom: 13.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 56,
                    width: 56,
                    alignment: Alignment.centerLeft,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgGroup25,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 15,
                      top: 8,
                      right: 14,
                    ),
                    child: Text(
                      "Pulse",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          12,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                        height: 1.33,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                left: 34,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 56,
                    width: 56,
                    alignment: Alignment.centerLeft,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgGroup2556X56,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                      top: 8,
                      right: 7,
                    ),
                    child: Text(
                      "Internet",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          12,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                        height: 1.33,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                left: 30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 56,
                    width: 56,
                    margin: getMargin(
                      left: 7,
                      right: 5,
                    ),
                    alignment: Alignment.center,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgGroup251,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Text(
                        "Call Package",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          height: 1.33,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                left: 26,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 56,
                    width: 56,
                    alignment: Alignment.centerLeft,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgGroup252,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      top: 8,
                      right: 12,
                    ),
                    child: Text(
                      "Water",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          12,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                        height: 1.33,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
