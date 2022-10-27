import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/home_screen/widgets/spacing.dart';

// ignore: must_be_immutable
class SlidertagihanItemWidget extends StatelessWidget {
  SlidertagihanItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(280),
      margin: getMargin(
        right: 18,
      ),
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.bluegray1003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              20,
            ),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: 18,
              top: 25,
              right: 18,
            ),
            child: Text(
              "** ${Constants.appName} **",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorConstant.bluegray903,
                fontSize: getFontSize(
                  14,
                ),
                fontFamily: 'Courier New',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 18,
              top: 4,
              right: 18,
            ),
            child: Text(
              "JULY, 2 2022 2:00 PM",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorConstant.gray600,
                fontSize: getFontSize(
                  11,
                ),
                fontFamily: 'Courier New',
                fontWeight: FontWeight.w400,
                height: 0.73,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 18,
              top: 8,
              right: 18,
            ),
            child: Text(
              "ELECTRICITY PAYMENT RECEIPT",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorConstant.bluegray903,
                fontSize: getFontSize(
                  14,
                ),
                fontFamily: 'Courier New',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 18,
              top: 24,
              right: 18,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                          bottom: 1,
                        ),
                        child: Text(
                          "DESTINATION:",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray903,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Courier New',
                            fontWeight: FontWeight.w400,
                            height: 1.64,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                        ),
                        child: Text(
                          " 011",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray903,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Courier New',
                            fontWeight: FontWeight.w400,
                            height: 1.82,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                          bottom: 1,
                        ),
                        child: Text(
                          "PRODUCT",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray903,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Courier New',
                            fontWeight: FontWeight.w400,
                            height: 1.64,
                          ),
                        ),
                      ),
                      HorizontalSpace(width: 32),
                      Padding(
                        padding: getPadding(
                          left: 0,
                        ),
                        child: Text(
                          ": IN5",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray903,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Courier New',
                            fontWeight: FontWeight.w400,
                            height: 1.82,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 2,
                        ),
                        child: Text(
                          "NOTE",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray903,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Courier New',
                            fontWeight: FontWeight.w400,
                            height: 1.64,
                          ),
                        ),
                      ),
                     HorizontalSpace(width: 53),
                      Padding(
                        padding: getPadding(
                          left: 0,
                        ),
                        child: Text(
                          ": XL REGULAR 15.000",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray903,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Courier New',
                            fontWeight: FontWeight.w400,
                            height: 1.82,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                          bottom: 1,
                        ),
                        child: Text(
                          "STATUS",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray903,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Courier New',
                            fontWeight: FontWeight.w400,
                            height: 1.64,
                          ),
                        ),
                      ),
                      HorizontalSpace(width: 39),
                      Padding(
                        padding: getPadding(
                          left: 0,
                        ),
                        child: Text(
                          ": SUCCESS",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray903,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Courier New',
                            fontWeight: FontWeight.w400,
                            height: 1.82,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                          bottom: 1,
                        ),
                        child: Text(
                          "SN",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray903,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Courier New',
                            fontWeight: FontWeight.w400,
                            height: 1.64,
                          ),
                        ),
                      ),
                      HorizontalSpace(width: 67),
                      Padding(
                        padding: getPadding(
                          left: 0,
                        ),
                        child: Text(
                          ": 9439R43439034",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray903,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Courier New',
                            fontWeight: FontWeight.w400,
                            height: 1.82,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                          bottom: 1,
                        ),
                        child: Text(
                          "PRICE",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray903,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Courier New',
                            fontWeight: FontWeight.w400,
                            height: 1.64,
                          ),
                        ),
                      ),
                      HorizontalSpace(width: 46),
                      Padding(
                        padding: getPadding(
                          left: 0,
                        ),
                        child: Text(
                          ": Rp 14.500",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray903,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Courier New',
                            fontWeight: FontWeight.w400,
                            height: 1.82,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 0,
                top: 24,
                right: 0,
                bottom: 22,
              ),
              child: Text(
                "THANK YOU",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstant.bluegray903,
                  fontSize: getFontSize(
                    14,
                  ),
                  fontFamily: 'Courier New',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
