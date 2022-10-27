import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

class SpashScreen0oneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                768.00,
              ),
              width: size.width,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgGradient462X375,
                        height: getVerticalSize(
                          462.00,
                        ),
                        width: getHorizontalSize(
                          375.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: getVerticalSize(
                        39.00,
                      ),
                      width: getHorizontalSize(
                        59.00,
                      ),
                      margin: getMargin(
                        left: 76,
                        top: 293,
                        right: 76,
                        bottom: 293,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: getPadding(
                                left: 10,
                                top: 10,
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgVector132,
                                height: getVerticalSize(
                                  27.00,
                                ),
                                width: getHorizontalSize(
                                  55.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: getPadding(
                                bottom: 10,
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgVector131,
                                height: getVerticalSize(
                                  29.00,
                                ),
                                width: getHorizontalSize(
                                  59.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
