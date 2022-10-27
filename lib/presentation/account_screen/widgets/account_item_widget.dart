import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class AccountItemWidget extends StatelessWidget {
  AccountItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        51.00,
      ),
      width: getHorizontalSize(
        335.00,
      ),
      margin: getMargin(
        top: 12.5,
        bottom: 12.5,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: getMargin(
                top: 10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 10,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgUser20X20,
                              height: getSize(
                                20.00,
                              ),
                              width: getSize(
                                20.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 12,
                              top: 10,
                            ),
                            child: Text(
                              "bebyjovanca",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.gray904,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                                height: 1.29,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      335.00,
                    ),
                    margin: getMargin(
                      top: 10,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray51,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: getPadding(
                left: 42,
                right: 42,
                bottom: 10,
              ),
              child: Text(
                "Type your name",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: ColorConstant.bluegray402,
                  fontSize: getFontSize(
                    12,
                  ),
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  height: 1.83,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
