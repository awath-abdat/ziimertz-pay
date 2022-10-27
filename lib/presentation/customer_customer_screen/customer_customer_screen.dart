import '../customer_customer_screen/widgets/listoval1_item_widget.dart';
import '../customer_customer_screen/widgets/listoval_two1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';
import 'package:cashcover/widgets/custom_floating_button.dart';

class CustomerCustomerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    height: getVerticalSize(
                      758.00,
                    ),
                    width: size.width,
                    margin: getMargin(
                      top: 10,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width,
                                  margin: getMargin(
                                    left: 24,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Customer",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.whiteA700,
                                          fontSize: getFontSize(
                                            32,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w700,
                                          height: 1.19,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                          bottom: 16,
                                        ),
                                        child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgVectorWhiteA700,
                                          height: getVerticalSize(
                                            19.00,
                                          ),
                                          width: getHorizontalSize(
                                            15.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: double.infinity,
                                    margin: getMargin(
                                      top: 32,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray900,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: getMargin(
                                            left: 20,
                                            right: 20,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.gray301,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                4.00,
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                margin: getMargin(
                                                  left: 26,
                                                  top: 16,
                                                  bottom: 16,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      2.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        "Transaction",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize: getFontSize(
                                                            12,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.33,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              CustomButton(
                                                width: 109,
                                                text: "Customer",
                                                margin: getMargin(
                                                  left: 25,
                                                  top: 2,
                                                  bottom: 2,
                                                ),
                                                variant:
                                                    ButtonVariant.FillWhiteA700,
                                                fontStyle: ButtonFontStyle
                                                    .UrbanistSemiBold12Gray900,
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  left: 21,
                                                  top: 16,
                                                  right: 22,
                                                  bottom: 16,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      2.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        "Collective Bill",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize: getFontSize(
                                                            12,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
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
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: double.infinity,
                                            margin: getMargin(
                                              top: 20,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.whiteA700,
                                            ),
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
                                                      left: 20,
                                                      top: 16,
                                                      right: 20,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSearch,
                                                              height: getSize(
                                                                24.00,
                                                              ),
                                                              width: getSize(
                                                                24.00,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 15,
                                                                top: 1,
                                                                bottom: 1,
                                                              ),
                                                              child: Text(
                                                                "Search here",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray400,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    14,
                                                                  ),
                                                                  fontFamily:
                                                                      'Urbanist',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  height: 1.57,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Container(
                                                              height:
                                                                  getVerticalSize(
                                                                24.00,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                1.00,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: ColorConstant
                                                                    .bluegray50,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 15,
                                                                top: 3,
                                                                bottom: 3,
                                                              ),
                                                              child:
                                                                  CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPrimaryBlack900,
                                                                height:
                                                                    getVerticalSize(
                                                                  18.00,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  14.00,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: size.width,
                                                  margin: getMargin(
                                                    top: 16,
                                                  ),
                                                  padding: getPadding(
                                                    left: 20,
                                                    top: 10,
                                                    bottom: 10,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray100,
                                                  ),
                                                  child: Text(
                                                    "Call Package",
                                                    maxLines: null,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .bluegray401,
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
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 20,
                                                      right: 18,
                                                    ),
                                                    child: ListView.builder(
                                                      physics:
                                                          BouncingScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount: 2,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Listoval1ItemWidget();
                                                      },
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: size.width,
                                                  margin: getMargin(
                                                    top: 20,
                                                  ),
                                                  padding: getPadding(
                                                    left: 20,
                                                    top: 10,
                                                    bottom: 10,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray100,
                                                  ),
                                                  child: Text(
                                                    "Electricity",
                                                    maxLines: null,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .bluegray401,
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
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 20,
                                                      right: 18,
                                                      bottom: 38,
                                                    ),
                                                    child: ListView.builder(
                                                      physics:
                                                          BouncingScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount: 5,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return ListovalTwo1ItemWidget();
                                                      },
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
                        CustomFloatingButton(
                          height: 56,
                          width: 56,
                          margin: getMargin(
                            left: 20,
                            top: 95,
                            right: 20,
                            bottom: 95,
                          ),
                          alignment: Alignment.bottomRight,
                          child: CommonImageView(
                            svgPath: ImageConstant.imgAdd,
                            height: getVerticalSize(
                              28.00,
                            ),
                            width: getHorizontalSize(
                              28.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
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
              child: Padding(
                padding: getPadding(
                  top: 16,
                  bottom: 35,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CommonImageView(
                      svgPath: ImageConstant.imgHome,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                    ),
                    CommonImageView(
                      svgPath: ImageConstant.imgCreditcard,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgPrimaryBlack90022X18,
                        height: getVerticalSize(
                          22.00,
                        ),
                        width: getHorizontalSize(
                          18.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 2,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgUser,
                        height: getSize(
                          20.00,
                        ),
                        width: getSize(
                          20.00,
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
    );
  }
}
