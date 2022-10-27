import '../pulse_recent_screen/widgets/pulse_recent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

class PulseRecentScreen extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.start,
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
                              "Pulse",
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
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 45,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 6,
                              bottom: 8,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgReply,
                              height: getVerticalSize(
                                35.00,
                              ),
                              width: getHorizontalSize(
                                44.00,
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    257.00,
                                  ),
                                  margin: getMargin(
                                    right: 4,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      right: 2,
                                                    ),
                                                    child: Text(
                                                      "Phone Number",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .bluegray401,
                                                        fontSize: getFontSize(
                                                          12,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.33,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 4,
                                                  ),
                                                  child: Text(
                                                    "087791832193",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(
                                                        14,
                                                      ),
                                                      fontFamily: 'Urbanist',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.57,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: getVerticalSize(
                                              22.00,
                                            ),
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                            margin: getMargin(
                                              left: 3,
                                              top: 20,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.black900,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 15,
                                          bottom: 9,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgPrimary,
                                          height: getVerticalSize(
                                            18.00,
                                          ),
                                          width: getHorizontalSize(
                                            16.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: getHorizontalSize(
                                    260.00,
                                  ),
                                  margin: getMargin(
                                    left: 1,
                                    top: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.bluegray51,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        172.00,
                      ),
                      width: getHorizontalSize(
                        335.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 32,
                        right: 20,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              335.00,
                            ),
                            margin: getMargin(
                              top: 76,
                              bottom: 76,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray51,
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
                              top: 39,
                              bottom: 39,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray51,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      right: 10,
                                    ),
                                    child: Text(
                                      "History",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
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
                                  Padding(
                                    padding: getPadding(
                                      top: 16,
                                    ),
                                    child: ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return PulseRecentItemWidget();
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 30,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgLogotelkomsel,
                                                height: getVerticalSize(
                                                  28.00,
                                                ),
                                                width: getHorizontalSize(
                                                  37.00,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 9,
                                                  top: 3,
                                                  bottom: 3,
                                                ),
                                                child: Text(
                                                  "081291832193 (Bebeb)",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
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
                                          Padding(
                                            padding: getPadding(
                                              top: 2,
                                              bottom: 2,
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
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      335.00,
                    ),
                    margin: getMargin(
                      left: 20,
                      top: 16,
                      right: 20,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray51,
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
