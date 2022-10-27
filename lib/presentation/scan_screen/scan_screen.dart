import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

class ScanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        left: 27,
                        top: 16,
                        right: 27,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 5,
                            ),
                            child: CommonImageView(
                              isBackBtn: true,
                              isRtl: isRtl,
                              svgPath: ImageConstant.imgVectorBluegray900,
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
                              left: 0,
                            ),
                            child: Text(
                              "Scan Me",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  20,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                                height: 1.40,
                              ),
                            ),
                          ),
                       SizedBox(
                        width: getHorizontalSize(7),
                       ),
                       
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 21,
                        top: 41,
                        right: 21,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            50.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgBase,
                          height: getSize(
                            100.00,
                          ),
                          width: getSize(
                            100.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 21,
                        top: 12,
                        right: 21,
                      ),
                      child: Text(
                        "Zhafira Azalea",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          height: 1.25,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 21,
                        top: 34,
                        right: 21,
                      ),
                      child: Text(
                        "Scan this for receiving transaction.",
                        overflow: TextOverflow.ellipsis,
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
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        321.00,
                      ),
                      width: getHorizontalSize(
                        335.00,
                      ),
                      margin: getMargin(
                        left: 21,
                        top: 18,
                        right: 19,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.gray200,
                            spreadRadius: getHorizontalSize(
                              2.00,
                            ),
                            blurRadius: getHorizontalSize(
                              2.00,
                            ),
                            offset: Offset(
                              0,
                              10,
                            ),
                          ),
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                all: 40,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgGroup,
                                height: getSize(
                                  180.00,
                                ),
                                width: getSize(
                                  180.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 40,
                                top: 40,
                                right: 40,
                                bottom: 20,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgGroup19589,
                                height: getVerticalSize(
                                  216.00,
                                ),
                                width: getHorizontalSize(
                                  230.00,
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
