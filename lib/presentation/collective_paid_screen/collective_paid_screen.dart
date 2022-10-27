import '../collective_paid_screen/widgets/listcheckmark1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';
import 'package:cashcover/widgets/custom_checkbox.dart';

// ignore: must_be_immutable
class CollectivePaidScreen extends StatelessWidget {
  bool checkbox = false;

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        left: 27,
                        top: 3,
                        right: 27,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 17,
                              bottom: 16,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgVectorBluegray900,
                              height: getVerticalSize(
                                15.00,
                              ),
                              width: getHorizontalSize(
                                7.00,
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Sucat Pelat Boong",
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
                                Padding(
                                  padding: getPadding(
                                    top: 4,
                                  ),
                                  child: Text(
                                    "Electricity",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
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
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 20,
                        top: 28,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.bluegray51,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            4.00,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: getMargin(
                              left: 30,
                              top: 16,
                              bottom: 16,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  2.00,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Customer",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.black900,
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
                          Padding(
                            padding: getPadding(
                              top: 2,
                              right: 2,
                              bottom: 2,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  margin: getMargin(
                                    top: 14,
                                    bottom: 14,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        2.00,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Bill List",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: ColorConstant.black900,
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
                                CustomButton(
                                  width: 109,
                                  text: "Paid Success",
                                  margin: getMargin(
                                    left: 39,
                                  ),
                                  variant: ButtonVariant.FillWhiteA700,
                                  fontStyle: ButtonFontStyle.UrbanistSemiBold12,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        top: 20,
                      ),
                      padding: getPadding(
                        left: 22,
                        top: 9,
                        bottom: 8,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.bluegray51,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8.00,
                          ),
                        ),
                      ),
                      child: Text(
                        "20 Customer, Your balance ${Constants.currency} 800.000",
                        maxLines: null,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          height: 1.29,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 16,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "Select month & year",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
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
                          CommonImageView(
                            svgPath: ImageConstant.imgCalendar,
                            height: getSize(
                              24.00,
                            ),
                            width: getSize(
                              24.00,
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
                      top: 9,
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray51,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 21,
                        right: 19,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomCheckbox(
                            text: "Select All",
                            iconSize: 20,
                            value: checkbox,
                            padding: getPadding(
                              top: 8,
                              bottom: 7,
                            ),
                            onChange: (value) {
                              checkbox = value;
                            },
                          ),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                  ),
                                  child: Text(
                                    "Bill Total",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
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
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 3,
                                      right: 1,
                                    ),
                                    child: Text(
                                      "${Constants.currency} 80.000",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
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
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: size.width,
                    margin: getMargin(
                      top: 10,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray52,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 15,
                        right: 19,
                      ),
                      child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: size.width,
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray52,
                            ),
                          );
                        },
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Listcheckmark1ItemWidget();
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: size.width,
                    margin: getMargin(
                      top: 16,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray52,
                    ),
                  ),
                  CustomButton(
                    width: 335,
                    text: "Print Receipt",
                    margin: getMargin(
                      left: 20,
                      top: 12,
                      right: 20,
                      bottom: 20,
                    ),
                    variant: ButtonVariant.FillGray901,
                    alignment: Alignment.center,
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
