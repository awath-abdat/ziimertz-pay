import '../home_0two_screen/widgets/listgrouptwentyfive1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

class Home0twoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    margin: getMargin(
                      top: 8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: getMargin(
                            left: 20,
                            right: 20,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: size.width,
                                  margin: getMargin(
                                    right: 4,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Welcome back!",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
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
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                                right: 10,
                                              ),
                                              child: Text(
                                                "Zhafira",
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
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                          bottom: 16,
                                        ),
                                        child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgVectorGray900,
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
                              ),
                              Container(
                                height: getVerticalSize(
                                  210.00,
                                ),
                                width: getHorizontalSize(
                                  335.00,
                                ),
                                margin: getMargin(
                                  top: 28,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgGradient,
                                        height: getVerticalSize(
                                          210.00,
                                        ),
                                        width: getHorizontalSize(
                                          335.00,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        margin: getMargin(
                                          left: 18,
                                          top: 25,
                                          right: 17,
                                          bottom: 19,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 7,
                                                  right: 4,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding: getPadding(
                                                              right: 10,
                                                            ),
                                                            child: Text(
                                                              "Balance",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                  14,
                                                                ),
                                                                fontFamily:
                                                                    'Urbanist',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.29,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 4,
                                                            ),
                                                            child: Text(
                                                              "${Constants.currency} 895.500,00",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                  24,
                                                                ),
                                                                fontFamily:
                                                                    'Urbanist',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 24,
                                                        bottom: 1,
                                                      ),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          CommonImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage1,
                                                            height: getSize(
                                                              24.00,
                                                            ),
                                                            width: getSize(
                                                              24.00,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              left: 7,
                                                              top: 3,
                                                              bottom: 3,
                                                            ),
                                                            child: Text(
                                                              "9.500",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                  14,
                                                                ),
                                                                fontFamily:
                                                                    'Urbanist',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.29,
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
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                  top: 56,
                                                ),
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgMenu60X300,
                                                  height: getVerticalSize(
                                                    60.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    300.00,
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
                              Container(
                                margin: getMargin(
                                  top: 29,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray900,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height: getSize(
                                        56.00,
                                      ),
                                      width: getSize(
                                        56.00,
                                      ),
                                      margin: getMargin(
                                        left: 20,
                                        top: 21,
                                        bottom: 23,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: getSize(
                                                56.00,
                                              ),
                                              width: getSize(
                                                56.00,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Container(
                                                      height: getSize(
                                                        56.00,
                                                      ),
                                                      width: getSize(
                                                        56.00,
                                                      ),
                                                      child:
                                                          CircularProgressIndicator(
                                                        value: 0.5,
                                                        strokeWidth:
                                                            getHorizontalSize(
                                                          2.00,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Container(
                                                      height: getSize(
                                                        56.00,
                                                      ),
                                                      width: getSize(
                                                        56.00,
                                                      ),
                                                      child:
                                                          CircularProgressIndicator(
                                                        value: 0.5,
                                                        strokeWidth:
                                                            getHorizontalSize(
                                                          2.00,
                                                        ),
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
                                                all: 16,
                                              ),
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgBarchart2,
                                                height: getSize(
                                                  24.00,
                                                ),
                                                width: getSize(
                                                  24.00,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 29,
                                        top: 27,
                                        bottom: 26,
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
                                              "Monthly Stats",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.whiteA700,
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
                                              top: 5,
                                            ),
                                            child: Text(
                                              "25% better performance",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.whiteA700,
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
                                    Padding(
                                      padding: getPadding(
                                        left: 4,
                                        bottom: 39,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgEllipse65,
                                        height: getVerticalSize(
                                          61.00,
                                        ),
                                        width: getHorizontalSize(
                                          75.00,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    top: 29,
                                    right: 9,
                                  ),
                                  child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 2,
                                    itemBuilder: (context, index) {
                                      return Listgrouptwentyfive1ItemWidget();
                                    },
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
                  top: 10,
                  bottom: 29,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 3,
                                right: 2,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgHome24X24,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: Text(
                              "Home",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.gray900,
                                fontSize: getFontSize(
                                  11,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w500,
                                height: 1.64,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 5,
                                right: 5,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgCreditcard24X24,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: Text(
                              "History",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.bluegray401,
                                fontSize: getFontSize(
                                  11,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w500,
                                height: 1.64,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 1,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 15,
                              right: 15,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgPrimaryBluegray401,
                              height: getVerticalSize(
                                22.00,
                              ),
                              width: getHorizontalSize(
                                18.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 5,
                              ),
                              child: Text(
                                "Customer",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.bluegray401,
                                  fontSize: getFontSize(
                                    11,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w500,
                                  height: 1.64,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 2,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 5,
                              right: 5,
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
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 6,
                              ),
                              child: Text(
                                "Profile",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.bluegray401,
                                  fontSize: getFontSize(
                                    11,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w500,
                                  height: 1.64,
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
          ],
        ),
      ),
    );
  }
}
