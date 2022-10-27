import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/change_language_screen/change_language_screen.dart';
import 'package:cashcover/presentation/home_screen/widgets/spacing.dart';
import 'package:cashcover/presentation/sign_in_empty_screen/sign_in_empty_screen.dart';
import 'package:cashcover/widgets/custom_switch.dart';

class SettingsScreen extends StatelessWidget {
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
              margin: getMargin(
                top: 16,
                bottom: 0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
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
                              "Settings",
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
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        top: 31,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                      ),
                      child: FadeInLeft(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 24,
                                  right: 24,
                                ),
                                child: Text(
                                  "General",
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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: getMargin(
                                  top: 14,
                                   left: 24,
                                  right: 24
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                ),
                                child: InkWell(
                                  onTap: (){
                                     showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            shape: RoundedRectangleBorder(
                                              
                                                borderRadius: BorderRadius.vertical(
                                                  top: Radius.circular(10),
                                                )
                                            ),
                                            builder: (context) {
                                              return ChangeLanguageScreen();
                                            });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 0,
                                          top: 16,
                                          bottom: 20,
                                        ),
                                        child: Text(
                                          "Language",
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
                                          top: 18,
                                          right: 0,
                                          bottom: 20,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            HorizontalSpace(width: 24),
                                            Padding(
                                              padding: getPadding(
                                                left: 0,
                                                top: 4,
                                                bottom: 2,
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: getMargin(
                                   left: 24,
                                  right: 24
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 0,
                                        top: 16,
                                        bottom: 20,
                                      ),
                                      child: Text(
                                        "Contact Us",
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
                                        top: 22,
                                        right: 0,
                                        bottom: 22,
                                      ),
                                      child: CommonImageView(
                                        isRtl: isRtl,
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
                                374.00,
                              ),
                              margin: getMargin(
                                left: 1,
                                top: 24,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray104,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 23,
                                  right: 24,
                                ),
                                child: Text(
                                  "Security",
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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: getMargin(
                                  top: 14,
                                  left: 24,
                                  right: 24
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 0,
                                        top: 16,
                                        bottom: 20,
                                      ),
                                      child: Text(
                                        "Change Wallet Pin",
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
                                        top: 22,
                                        right: 0,
                                        bottom: 22,
                                      ),
                                      child: CommonImageView(
                                        isRtl: isRtl,
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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: getMargin(
                                   left: 24,
                                  right: 24
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      margin: getMargin(
                                        left: 0,
                                        top: 8,
                                        bottom: 6,
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
                                              "Biometric",
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
                                              top: 8,
                                            ),
                                            child: Text(
                                              "Enable Fingerprint scan & Face ID",
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
                                    CustomSwitch(
                                      isBlue: true,
                                      padding: getPadding(
                                        top: 20,
                                        right: 0,
                                        bottom: 20,
                                      ),
                                      value: true,
                                      onChanged: (value) {},
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: getPadding(
                                  left: 24,
                                  right: 24
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 0,
                                        top: 16,
                                        bottom: 20,
                                      ),
                                      child: Text(
                                        "Privacy Policy",
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
                                        top: 22,
                                        right: 0,
                                        bottom: 22,
                                      ),
                                      child: CommonImageView(
                                        isRtl: isRtl,
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
                            VerticalSpace(
                              height: 40,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: InkWell(
                                onTap: (){
                                     showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            shape: RoundedRectangleBorder(
                                              
                                                borderRadius: BorderRadius.vertical(
                                                  top: Radius.circular(0),
                                                )
                                            ),
                                            builder: (context) {
                                              return Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.only(
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
                                bottomRight: Radius.circular(
                                  getHorizontalSize(
                                    0.00,
                                  ),
                                ),
                              ),
                              
                                ),
                                child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                    right: getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray300,
                                    borderRadius: BorderRadius.circular(
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
                                    right: getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Logout",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.redA700,
                                      fontSize: getFontSize(
                                        20,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700,
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
                                    right: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray200,
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
                                    right: getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Are you sure you want to log out?",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                     
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700,
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
                                    right: getHorizontalSize(
                                      15.00,
                                    ),
                                    bottom: getVerticalSize(
                                      30.00,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(
                        50.00,
                                          ),
                                          width: getHorizontalSize(
                        160.00,
                                          ),
                                          decoration: BoxDecoration(
                        color:ColorConstant.bluegray50,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            5.00,
                          ),
                        ),
                                          ),
                                          child: Text(
                        "Cancel",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.20,
                        ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                        12.00,
                                          ),
                                        ),
                                        child: GestureDetector(
                                          onTap: (){
                                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                SignInEmptyScreen()), (Route<dynamic> route) => false);
                                          },
                                          child: Container(
                        alignment: Alignment.center,
                        height: getVerticalSize(
                          50.00,
                        ),
                        width: getHorizontalSize(
                          160.00,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.black900,
                          borderRadius: BorderRadius.circular(
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
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.20,
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
                                    left: 24,
                                    top: 0,
                                    right: 24,
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
                          ],
                        ),
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
