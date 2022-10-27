import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/account_screen/account_screen.dart';
import 'package:cashcover/presentation/address_screen/address_screen.dart';
import 'package:cashcover/presentation/help_screen/help_screen.dart';
import 'package:cashcover/presentation/home_screen/widgets/spacing.dart';
import 'package:cashcover/presentation/settings_screen/settings_screen.dart';
import 'package:cashcover/presentation/sign_in_empty_screen/sign_in_empty_screen.dart';
import 'package:cashcover/widgets/custom_button.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    margin: getMargin(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: getVerticalSize(
                            221.00,
                          ),
                          width: size.width,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: getVerticalSize(
                                    156.00,
                                  ),
                                  width: size.width,
                                  margin: getMargin(
                                    bottom: 10,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgGradient156X375,
                                          height: getVerticalSize(
                                            156.00,
                                          ),
                                          width: getHorizontalSize(
                                            375.00,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          width: size.width,
                                          margin: getMargin(
                                            left: 24,
                                            top: 10,
                                            right: 24,
                                            bottom: 10,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Profile",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray900,
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
                                                  svgPath: ImageConstant
                                                      .imgVectorGray900,
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
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  margin: getMargin(
                                    left: 20,
                                    top: 10,
                                    right: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.indigo52,
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
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      HorizontalSpace(width: 20),
                                      Padding(
                                        padding: getPadding(
                                          left: 0,
                                          top: 26,
                                          bottom: 25,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              40.00,
                                            ),
                                          ),
                                          child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgBase80X80,
                                            height: getSize(
                                              80.00,
                                            ),
                                            width: getSize(
                                              80.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 24,
                                          top: 26,
                                          right: 24,
                                          bottom: 24,
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
                                                "Rebecca Namuganga",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.bluegray904,
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
                                                top: 4,
                                              ),
                                              child: Text(
                                                "jo.weaver@gmail.com",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.bluegray402,
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.57,
                                                ),
                                              ),
                                            ),
                                            CustomButton(
                                              width: 82,
                                              text: "Unverified",
                                              margin: getMargin(
                                                top: 9,
                                                right: 10,
                                              ),
                                              variant:
                                                  ButtonVariant.FillAmberA70063,
                                              shape: ButtonShape.CircleBorder13,
                                              padding:
                                                  ButtonPadding.PaddingAll6,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsSemiBold12,
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
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: double.infinity,
                            margin: getMargin(
                              left: 24,
                              top: 32,
                              right: 24,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FadeInLeft(
                                  duration: Duration(milliseconds: 800),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AccountScreen()),
                                      );
                                    },
                                    child: Padding(
                                      padding: getPadding(top: 14, bottom: 14),
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
                                                shape: IconButtonShape
                                                    .CircleBorder18,
                                                padding: IconButtonPadding
                                                    .PaddingAll10,
                                                child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgIcon,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 16,
                                                  right: 16,
                                                  top: 11,
                                                  bottom: 11,
                                                ),
                                                child: Text(
                                                  "My Account",
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
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.29,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 14,
                                              bottom: 14,
                                            ),
                                            child: CommonImageView(
                                              isRtl: isRtl,
                                              svgPath:
                                                  ImageConstant.imgArrowright,
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
                                FadeInLeft(
                                  duration: Duration(milliseconds: 1000),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AddressScreen()),
                                      );
                                    },
                                    child: Padding(
                                      padding: getPadding(top: 14, bottom: 14),
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
                                                shape: IconButtonShape
                                                    .CircleBorder18,
                                                padding: IconButtonPadding
                                                    .PaddingAll10,
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgIcon40X40,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 16,
                                                  right: 16,
                                                  top: 11,
                                                  bottom: 11,
                                                ),
                                                child: Text(
                                                  "Address",
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
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.29,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 14,
                                              bottom: 14,
                                            ),
                                            child: CommonImageView(
                                              isRtl: isRtl,
                                              svgPath:
                                                  ImageConstant.imgArrowright,
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
                                FadeInLeft(
                                  duration: Duration(milliseconds: 1200),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: getPadding(top: 14, bottom: 14),
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
                                                shape: IconButtonShape
                                                    .CircleBorder18,
                                                padding: IconButtonPadding
                                                    .PaddingAll10,
                                                child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgIcon1,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 16,
                                                  right: 16,
                                                  top: 11,
                                                  bottom: 11,
                                                ),
                                                child: Text(
                                                  "Contact",
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
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.29,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 14,
                                              bottom: 14,
                                            ),
                                            child: CommonImageView(
                                              isRtl: isRtl,
                                              svgPath:
                                                  ImageConstant.imgArrowright,
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
                                FadeInLeft(
                                  duration: Duration(milliseconds: 1400),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HelpScreen()),
                                      );
                                    },
                                    child: Padding(
                                      padding: getPadding(top: 14, bottom: 14),
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
                                                shape: IconButtonShape
                                                    .CircleBorder18,
                                                padding: IconButtonPadding
                                                    .PaddingAll10,
                                                child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgIcon2,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 16,
                                                  right: 16,
                                                  top: 11,
                                                  bottom: 11,
                                                ),
                                                child: Text(
                                                  "Help Center",
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
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.29,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 14,
                                              bottom: 14,
                                            ),
                                            child: CommonImageView(
                                              isRtl: isRtl,
                                              svgPath:
                                                  ImageConstant.imgArrowright,
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
                                FadeInLeft(
                                  duration: Duration(milliseconds: 1600),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SettingsScreen()),
                                      );
                                    },
                                    child: Padding(
                                      padding: getPadding(top: 14, bottom: 14),
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
                                                shape: IconButtonShape
                                                    .CircleBorder18,
                                                padding: IconButtonPadding
                                                    .PaddingAll10,
                                                child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgSettings,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 16,
                                                  right: 16,
                                                  top: 11,
                                                  bottom: 11,
                                                ),
                                                child: Text(
                                                  "Settings",
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
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.29,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 14,
                                              bottom: 14,
                                            ),
                                            child: CommonImageView(
                                              isRtl: isRtl,
                                              svgPath:
                                                  ImageConstant.imgArrowright,
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
                                FadeInLeft(
                                  duration: Duration(milliseconds: 1800),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                              top: Radius.circular(0),
                                            )),
                                            builder: (context) {
                                              return Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      getHorizontalSize(
                                                        40.00,
                                                      ),
                                                    ),
                                                    topRight: Radius.circular(
                                                      getHorizontalSize(
                                                        40.00,
                                                      ),
                                                    ),
                                                    bottomLeft: Radius.circular(
                                                      getHorizontalSize(
                                                        0.00,
                                                      ),
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(
                                                      getHorizontalSize(
                                                        0.00,
                                                      ),
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
                                                    Container(
                                                      height: getVerticalSize(
                                                        3.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        56.00,
                                                      ),
                                                      margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          10.00,
                                                        ),
                                                        top: getVerticalSize(
                                                          8.00,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          10.00,
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .gray300,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          getHorizontalSize(
                                                            1.50,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          10.00,
                                                        ),
                                                        top: getVerticalSize(
                                                          24.10,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          10.00,
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "Logout",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .redA700,
                                                          fontSize: getFontSize(
                                                            20,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: getVerticalSize(
                                                        1.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        380.00,
                                                      ),
                                                      margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          20.00,
                                                        ),
                                                        top: getVerticalSize(
                                                          24.10,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          20.00,
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .gray200,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          10.00,
                                                        ),
                                                        top: getVerticalSize(
                                                          23.00,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          10.00,
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "Are you sure you want to log out?",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: getFontSize(
                                                            14,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          15.00,
                                                        ),
                                                        top: getVerticalSize(
                                                          24.00,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          15.00,
                                                        ),
                                                        bottom: getVerticalSize(
                                                          30.00,
                                                        ),
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
                                                          GestureDetector(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height:
                                                                  getVerticalSize(
                                                                50.00,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                160.00,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: ColorConstant
                                                                    .bluegray50,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                    5.00,
                                                                  ),
                                                                ),
                                                              ),
                                                              child: Text(
                                                                "Cancel",
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .black900,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    16,
                                                                  ),
                                                                  fontFamily:
                                                                      'Urbanist',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  letterSpacing:
                                                                      0.20,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                12.00,
                                                              ),
                                                            ),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                Navigator.of(context).pushAndRemoveUntil(
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                SignInEmptyScreen()),
                                                                    (Route<dynamic>
                                                                            route) =>
                                                                        false);
                                                              },
                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height:
                                                                    getVerticalSize(
                                                                  50.00,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  160.00,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: ColorConstant
                                                                      .black900,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    getHorizontalSize(
                                                                      5.00,
                                                                    ),
                                                                  ),
                                                                  // boxShadow: [
                                                                  //   BoxShadow(
                                                                  //     color: ColorConstant.teal4003f,
                                                                  //     spreadRadius: getHorizontalSize(
                                                                  //       5.00,
                                                                  //     ),
                                                                  //     blurRadius: getHorizontalSize(
                                                                  //       7.00,
                                                                  //     ),
                                                                  //     offset: Offset(
                                                                  //       0,
                                                                  //       4,
                                                                  //     ),
                                                                  //   ),
                                                                  // ],
                                                                ),
                                                                child: Text(
                                                                  "Yes, Logout",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      TextStyle(
                                                                    color: ColorConstant
                                                                        .whiteA700,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      14,
                                                                    ),
                                                                    fontFamily:
                                                                        'Urbanist',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    letterSpacing:
                                                                        0.20,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                          left: 0,
                                          top: 14,
                                          bottom: 14,
                                          right: 0,
                                        ),
                                        child: Text(
                                          "Logout",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: ColorConstant.red600,
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
          ],
        ),
      ),
    );
  }
}
