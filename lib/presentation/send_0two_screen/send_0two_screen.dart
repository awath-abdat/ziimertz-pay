import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';
import 'package:cashcover/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class Send0twoScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

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
                              "Send",
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
                  CustomSearchView(
                    width: 335,
                    focusNode: FocusNode(),
                    controller: searchController,
                    hintText: "Search Contact",
                    margin: getMargin(
                      left: 20,
                      top: 31,
                      right: 20,
                    ),
                    alignment: Alignment.center,
                    prefix: Container(
                      margin: getMargin(
                        left: 19,
                        top: 14,
                        right: 15,
                        bottom: 14,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgSearchGray900,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      minWidth: getSize(
                        20.00,
                      ),
                      minHeight: getSize(
                        20.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 24,
                        right: 20,
                      ),
                      child: Text(
                        "Recent Payees",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.black900,
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
                        left: 20,
                        top: 24,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    right: 10,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        30.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgOval5,
                                      height: getSize(
                                        60.00,
                                      ),
                                      width: getSize(
                                        60.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    65.00,
                                  ),
                                  margin: getMargin(
                                    top: 10,
                                  ),
                                  child: Text(
                                    "Esther Howard",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w600,
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 6,
                                      right: 9,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          30.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgBase60X60,
                                        height: getSize(
                                          60.00,
                                        ),
                                        width: getSize(
                                          60.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: getHorizontalSize(
                                      75.00,
                                    ),
                                    margin: getMargin(
                                      top: 10,
                                    ),
                                    child: Text(
                                      "Marvin McKinney",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
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
                              bottom: 12,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 4,
                                    right: 10,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        30.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgBase1,
                                      height: getSize(
                                        60.00,
                                      ),
                                      width: getSize(
                                        60.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 10,
                                  ),
                                  child: Text(
                                    "Jane Cooper",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w600,
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 11,
                                    right: 11,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        30.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgBase2,
                                      height: getSize(
                                        60.00,
                                      ),
                                      width: getSize(
                                        60.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: getHorizontalSize(
                                      85.00,
                                    ),
                                    margin: getMargin(
                                      top: 10,
                                    ),
                                    child: Text(
                                      "Savannah Nguyen",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        height: 1.33,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 335,
                    text: "See All",
                    margin: getMargin(
                      left: 20,
                      top: 24,
                      right: 20,
                    ),
                    variant: ButtonVariant.FillGray100,
                    fontStyle: ButtonFontStyle.UrbanistBold14Gray900,
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: size.width,
                    margin: getMargin(
                      top: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray100,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 30,
                        top: 39,
                        right: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                              bottom: 1,
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
                            ),
                            child: Text(
                              "Type your name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.bluegray402,
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
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      335.00,
                    ),
                    margin: getMargin(
                      left: 20,
                      top: 19,
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray51,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 30,
                        top: 38,
                        right: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 4,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgMobile,
                              height: getVerticalSize(
                                14.00,
                              ),
                              width: getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 12,
                            ),
                            child: Text(
                              "Type contact number",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.bluegray401,
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
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      335.00,
                    ),
                    margin: getMargin(
                      left: 20,
                      top: 19,
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray51,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 38,
                        top: 35,
                        right: 38,
                      ),
                      child: Text(
                        "Type notes",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.bluegray401,
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
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      335.00,
                    ),
                    margin: getMargin(
                      left: 20,
                      top: 57,
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          0.50,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.bluegray51,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        top: 17,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.gray5003f,
                            spreadRadius: getHorizontalSize(
                              2.00,
                            ),
                            blurRadius: getHorizontalSize(
                              2.00,
                            ),
                            offset: Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                            width: 335,
                            text: "Continue",
                            margin: getMargin(
                              left: 20,
                              top: 12,
                              right: 20,
                              bottom: 20,
                            ),
                            variant: ButtonVariant.FillBlack900,
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
