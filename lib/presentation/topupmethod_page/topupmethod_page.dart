import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/top_up_nominal_screen/top_up_nominal_screen.dart';
import 'package:cashcover/presentation/top_up_va_screen/top_up_va_screen.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class TopupmethodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(302),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: getVerticalSize(
                5.00,
              ),
              width: getHorizontalSize(
                56.00,
              ),
              margin: getMargin(
                left: 20,
                top: 16,
                right: 20,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.bluegray51,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    2.50,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 20,
                top: 24,
                right: 20,
              ),
              child: Text(
                "Top Up Method",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: getFontSize(
                    20,
                  ),
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700,
                  height: 1.40,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopUpNominalScreen()),
                );
              },
              child: Container(
                margin: getMargin(
                  left: 20,
                  top: 12,
                  right: 19,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 19,
                        bottom: 19,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomIconButton(
                            height: 42,
                            width: 42,
                            shape: IconButtonShape.CircleBorder21,
                            child: CommonImageView(
                              svgPath: ImageConstant.imgGroup33442X42,
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 15,
                              top: 1,
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
                                  child: Text(
                                    "Bank Card",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700,
                                      height: 1.29,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Text(
                                    "Top up your balance using a bank card",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray401,
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
                    Padding(
                      padding: getPadding(
                        top: 34,
                        right: 9,
                        bottom: 34,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: getVerticalSize(
                          12.00,
                        ),
                        width: getHorizontalSize(
                          6.00,
                        ),
                      ),
                    ),
                  ],
                ),
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
              top: 8,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.bluegray51,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: getMargin(
                left: 20,
                top: 7,
                right: 19,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 19,
                      bottom: 19,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomIconButton(
                          height: 42,
                          width: 42,
                          shape: IconButtonShape.CircleBorder21,
                          child: CommonImageView(
                            svgPath: ImageConstant.imgGroup333,
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 15,
                            top: 1,
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
                                child: Text(
                                  "Mobile Money",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                    height: 1.29,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 7,
                                ),
                                child: Text(
                                  "Top up your balance using mobile money",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray401,
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
                  Padding(
                    padding: getPadding(
                      top: 34,
                      right: 9,
                      bottom: 34,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgArrowright,
                      height: getVerticalSize(
                        12.00,
                      ),
                      width: getHorizontalSize(
                        6.00,
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
              top: 8,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.bluegray51,
            ),
          ),
          /*
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TopUpVaScreen()),
              );
            },
            child: Align(
              alignment: Alignment.center,
              child: Container(
                margin: getMargin(
                  left: 20,
                  top: 7,
                  right: 19,
                  bottom: 25,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 19,
                        bottom: 19,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CommonImageView(
                            svgPath: ImageConstant.imgThumbsup,
                            height: getSize(
                              42.00,
                            ),
                            width: getSize(
                              42.00,
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 15,
                              top: 1,
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
                                  child: Text(
                                    "Virtual Account",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700,
                                      height: 1.29,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Text(
                                    "Confirm automaticaly by 24 hours",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray401,
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
                    Padding(
                      padding: getPadding(
                        top: 34,
                        right: 9,
                        bottom: 34,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: getVerticalSize(
                          12.00,
                        ),
                        width: getHorizontalSize(
                          6.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
