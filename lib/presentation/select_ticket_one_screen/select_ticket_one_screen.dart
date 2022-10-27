import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/select_ticket_screen/select_ticket_screen.dart';
import 'package:cashcover/widgets/custom_button.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

class SelectTicketOneScreen extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.end,
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
                              "Select Your Ticket",
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
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        left: 15,
                        top: 37,
                        right: 15,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray100,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            4.00,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 20,
                                top: 20,
                                right: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        variant:
                                            IconButtonVariant.FillWhiteA700,
                                        shape: IconButtonShape.CircleBorder9,
                                        padding: IconButtonPadding.PaddingAll10,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgThumb,
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 16,
                                          bottom: 2,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "SURABAYA",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.bluegray904,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                                height: 1.29,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 4,
                                                right: 4,
                                              ),
                                              child: Text(
                                                "12 Sep 2020",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.bluegray401,
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
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                      bottom: 8,
                                    ),
                                    child: Text(
                                      "7:00",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
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
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 38,
                              top: 8,
                              right: 38,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgDot,
                              height: getVerticalSize(
                                16.00,
                              ),
                              width: getHorizontalSize(
                                4.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 20,
                                top: 8,
                                right: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        variant:
                                            IconButtonVariant.FillWhiteA700,
                                        shape: IconButtonShape.CircleBorder9,
                                        padding: IconButtonPadding.PaddingAll10,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgThumb,
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 16,
                                          bottom: 2,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "SEMARANG",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.bluegray904,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                                height: 1.29,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 4,
                                                right: 10,
                                              ),
                                              child: Text(
                                                "12 Sep 2020",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.bluegray401,
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
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                      bottom: 8,
                                    ),
                                    child: Text(
                                      "8:30",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
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
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 20,
                                top: 24,
                                right: 20,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    15.00,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 43,
                                      top: 26,
                                      bottom: 25,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgCar,
                                      height: getVerticalSize(
                                        20.00,
                                      ),
                                      width: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: getSize(
                                      30.00,
                                    ),
                                    margin: getMargin(
                                      left: 7,
                                      top: 21,
                                      bottom: 21,
                                    ),
                                    padding: getPadding(
                                      left: 12,
                                      top: 7,
                                      right: 11,
                                      bottom: 7,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "2",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.indigoA200,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        height: 1.33,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 47,
                                      top: 31,
                                      bottom: 32,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgAngledoubleri,
                                      height: getVerticalSize(
                                        8.00,
                                      ),
                                      width: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 49,
                                      top: 26,
                                      bottom: 25,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgCar,
                                      height: getVerticalSize(
                                        20.00,
                                      ),
                                      width: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: getSize(
                                      30.00,
                                    ),
                                    margin: getMargin(
                                      left: 7,
                                      top: 21,
                                      right: 41,
                                      bottom: 21,
                                    ),
                                    padding: getPadding(
                                      left: 12,
                                      top: 7,
                                      right: 11,
                                      bottom: 7,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "5",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.red600,
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
                          ),
                          CustomButton(
                            width: 305,
                            text: "Buy ${Constants.currency} 450.000",
                            margin: getMargin(
                              left: 20,
                              top: 24,
                              right: 20,
                              bottom: 20,
                            ),
                            onTap: (){
                              Navigator.push(
          context,
          MaterialPageRoute(builder: (context)
       =>SelectTicketScreen()),
        );
                            },
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        left: 15,
                        top: 15,
                        right: 15,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray100,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            4.00,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 20,
                                top: 20,
                                right: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        variant:
                                            IconButtonVariant.FillWhiteA700,
                                        shape: IconButtonShape.CircleBorder9,
                                        padding: IconButtonPadding.PaddingAll10,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgThumb,
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 16,
                                          bottom: 4,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                right: 10,
                                              ),
                                              child: Text(
                                                "MADIUN",
                                                overflow: TextOverflow.ellipsis,
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
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                              ),
                                              child: Text(
                                                "12 Sep 2020",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.bluegray401,
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
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                      bottom: 8,
                                    ),
                                    child: Text(
                                      "7:00",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
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
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 38,
                              top: 8,
                              right: 38,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgDot,
                              height: getVerticalSize(
                                16.00,
                              ),
                              width: getHorizontalSize(
                                4.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 20,
                                top: 8,
                                right: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        variant:
                                            IconButtonVariant.FillWhiteA700,
                                        shape: IconButtonShape.CircleBorder9,
                                        padding: IconButtonPadding.PaddingAll10,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgThumb,
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 16,
                                          bottom: 4,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "BANDUNG",
                                              overflow: TextOverflow.ellipsis,
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
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                              ),
                                              child: Text(
                                                "12 Sep 2020",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.bluegray401,
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
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                      bottom: 8,
                                    ),
                                    child: Text(
                                      "8:30",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
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
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 20,
                                top: 24,
                                right: 20,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    15.00,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 17,
                                      top: 26,
                                      bottom: 25,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgCar,
                                      height: getVerticalSize(
                                        20.00,
                                      ),
                                      width: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: getSize(
                                      30.00,
                                    ),
                                    margin: getMargin(
                                      left: 7,
                                      top: 21,
                                      bottom: 21,
                                    ),
                                    padding: getPadding(
                                      left: 12,
                                      top: 7,
                                      right: 11,
                                      bottom: 7,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "2",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.indigoA200,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        height: 1.33,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      30.00,
                                    ),
                                    width: getHorizontalSize(
                                      118.00,
                                    ),
                                    margin: getMargin(
                                      left: 19,
                                      top: 21,
                                      bottom: 21,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 10,
                                              bottom: 11,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgAngledoubleri,
                                                  height: getVerticalSize(
                                                    8.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    10.00,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 97,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgAngledoubleri,
                                                    height: getVerticalSize(
                                                      8.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      10.00,
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
                                              left: 32,
                                              right: 29,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 5,
                                                    bottom: 4,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgCar,
                                                    height: getVerticalSize(
                                                      20.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      18.00,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: getSize(
                                                    30.00,
                                                  ),
                                                  margin: getMargin(
                                                    left: 7,
                                                    right: 1,
                                                  ),
                                                  padding: getPadding(
                                                    left: 10,
                                                    top: 7,
                                                    right: 10,
                                                    bottom: 7,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        15.00,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "6",
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .green600,
                                                      fontSize: getFontSize(
                                                        12,
                                                      ),
                                                      fontFamily: 'Urbanist',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 1.33,
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
                                  Padding(
                                    padding: getPadding(
                                      left: 20,
                                      top: 26,
                                      bottom: 25,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgCar,
                                      height: getVerticalSize(
                                        20.00,
                                      ),
                                      width: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: getSize(
                                      30.00,
                                    ),
                                    margin: getMargin(
                                      left: 7,
                                      top: 21,
                                      right: 16,
                                      bottom: 21,
                                    ),
                                    padding: getPadding(
                                      left: 12,
                                      top: 7,
                                      right: 11,
                                      bottom: 7,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "5",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.red600,
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
                          ),
                          CustomButton(
                            width: 305,
                            text: "Buy ${Constants.currency} 450.000",
                            margin: getMargin(
                              left: 20,
                              top: 24,
                              right: 20,
                              bottom: 20,
                            ),
                            alignment: Alignment.center,
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
