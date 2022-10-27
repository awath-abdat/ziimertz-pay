import 'package:easy_localization/easy_localization.dart';

import '../select_ticket_screen/widgets/select_ticket_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

class SelectTicketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.gray900,
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width,
                    margin: getMargin(
                      left: 32,
                      top: 16,
                      right: 32,
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
                            isRtl: isRtl,
                            isBackBtn: true,
                            svgPath: ImageConstant.imgVectorWhiteA70015X7,
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
                              color: ColorConstant.whiteA700,
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
                  Padding(
                    padding: getPadding(
                      left: 30,
                      top: 40,
                      right: 30,
                    ),
                    child: Text(
                      "Metro Ticket",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontSize: getFontSize(
                          20,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                        height: 1.40,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        600.00,
                      ),
                      width: getHorizontalSize(
                        345.00,
                      ),
                      margin: getMargin(
                        left: 15,
                        top: 26,
                        right: 15,
                        bottom: 20,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CommonImageView(
                              svgPath: ImageConstant.imgBaseWhiteA700,
                              height: getVerticalSize(
                                600.00,
                              ),
                              width: getHorizontalSize(
                                345.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 20,
                                top: 30,
                                right: 20,
                                bottom: 20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                            shape:
                                                IconButtonShape.CircleBorder9,
                                            padding:
                                                IconButtonPadding.PaddingAll10,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .bluegray904,
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
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 8,
                                      right: 18,
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
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
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
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              variant: IconButtonVariant
                                                  .FillWhiteA700,
                                              shape:
                                                  IconButtonShape.CircleBorder9,
                                              padding: IconButtonPadding
                                                  .PaddingAll10,
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .bluegray904,
                                                      fontSize: getFontSize(
                                                        14,
                                                      ),
                                                      fontFamily: 'Urbanist',
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                  Container(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                    width: getHorizontalSize(
                                      305.00,
                                    ),
                                    margin: getMargin(
                                      top: 33,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray101,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: getMargin(
                                        left: 18,
                                        top: 25,
                                        right: 10,
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
                                              "Passenger",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.bluegray401,
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
                                              top: 2,
                                              right: 10,
                                            ),
                                            child: Text(
                                              "Gabriel Ngateman",
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
                                              top: 28,
                                              right: 10,
                                            ),
                                            child: ListView.builder(
                                              physics: BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: 2,
                                              itemBuilder: (context, index) {
                                                return SelectTicketItemWidget();
                                              },
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              margin: getMargin(
                                                top: 26,
                                                right: 10,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            7.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            8.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            6.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            10.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            6.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            6.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            10.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            10.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            10.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            6.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            6.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            10.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            6.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            6.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            6.00,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray53,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 64,
                                                      top: 8,
                                                      right: 64,
                                                    ),
                                                    child: Text(
                                                      "91782JA31HL320389",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .bluegray401,
                                                        fontSize: getFontSize(
                                                          12,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 2.00,
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
                                  ),
                                  CustomButton(
                                    width: 305,
                                    text: "Save for Control",
                                    margin: getMargin(
                                      top: 19,
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
