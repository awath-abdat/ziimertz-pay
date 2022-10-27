import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

class ScannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        left: 27,
                        top: 16,
                        right: 27,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 5,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgVector,
                              height: getVerticalSize(
                                15.00,
                              ),
                              width: getHorizontalSize(
                                7.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 80,
                            ),
                            child: Text(
                              "Scan",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.gray900,
                                fontSize: getFontSize(
                                  20,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                                height: 1.40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        699.00,
                      ),
                      width: size.width,
                      margin: getMargin(
                        top: 28,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: getVerticalSize(
                                656.00,
                              ),
                              width: size.width,
                              margin: getMargin(
                                top: 10,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgContent1,
                                      height: getVerticalSize(
                                        656.00,
                                      ),
                                      width: getHorizontalSize(
                                        375.00,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      margin: getMargin(
                                        left: 22,
                                        top: 71,
                                        right: 22,
                                        bottom: 71,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: getVerticalSize(
                                                410.00,
                                              ),
                                              width: getHorizontalSize(
                                                331.00,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        left: 40,
                                                        right: 40,
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          getHorizontalSize(
                                                            21.00,
                                                          ),
                                                        ),
                                                        child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgScan1,
                                                          height:
                                                              getVerticalSize(
                                                            410.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            190.00,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Container(
                                                      margin: getMargin(
                                                        top: 73,
                                                        bottom: 73,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment(
                                                            0.5,
                                                            -3.0616171314629196e-17,
                                                          ),
                                                          end: Alignment(
                                                            0.5,
                                                            0.9999999999999999,
                                                          ),
                                                          colors: [
                                                            ColorConstant
                                                                .whiteA700B2,
                                                            ColorConstant
                                                                .whiteA70000,
                                                          ],
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            height:
                                                                getVerticalSize(
                                                              3.00,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              331.00,
                                                            ),
                                                            margin: getMargin(
                                                              bottom: 135,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .black900,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                getHorizontalSize(
                                                                  1.50,
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
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 78,
                                                top: 57,
                                                right: 78,
                                              ),
                                              child: Text(
                                                "Scaning process...",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    12,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.50,
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
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: getVerticalSize(
                                90.00,
                              ),
                              width: size.width,
                              margin: getMargin(
                                bottom: 10,
                              ),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgGradient,
                                      height: getVerticalSize(
                                        90.00,
                                      ),
                                      width: getHorizontalSize(
                                        375.00,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 102,
                                        top: 28,
                                        right: 102,
                                        bottom: 28,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CommonImageView(
                                            svgPath: ImageConstant.imgQrcode,
                                            height: getSize(
                                              30.00,
                                            ),
                                            width: getSize(
                                              30.00,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 21,
                                              top: 4,
                                              bottom: 4,
                                            ),
                                            child: Text(
                                              "Scan the QR code.",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorConstant.black900,
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
                                  ),
                                ],
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
