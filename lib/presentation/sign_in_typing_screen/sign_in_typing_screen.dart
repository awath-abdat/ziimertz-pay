import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';

class SignInTypingScreen extends StatelessWidget {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 72,
                      right: 24,
                    ),
                    child: Text(
                      "Welcome Back!",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 8,
                      right: 24,
                    ),
                    child: Text(
                      "Sign In to your account",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.bluegray401,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 20,
                        top: 29,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            4.00,
                          ),
                        ),
                        border: Border.all(
                          color: ColorConstant.bluegray51,
                          width: getHorizontalSize(
                            1.00,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 16,
                              bottom: 12,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgGoogle1,
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
                              left: 20,
                              top: 16,
                              bottom: 15,
                            ),
                            child: Text(
                              "Sign in with Google",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.bluegray800,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
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
                        left: 20,
                        top: 17,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              143.00,
                            ),
                            margin: getMargin(
                              top: 12,
                              bottom: 7,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray51,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: Text(
                              "OR",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.bluegray401,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                                height: 1.25,
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              143.00,
                            ),
                            margin: getMargin(
                              left: 10,
                              top: 12,
                              bottom: 7,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray51,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        51.00,
                      ),
                      width: getHorizontalSize(
                        335.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 30,
                        right: 16,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: getMargin(
                                top: 10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              bottom: 9,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgMail,
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
                                              top: 11,
                                            ),
                                            child: Text(
                                              "bebyjovanca@gmail.c",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.gray904,
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
                                      top: 11,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 42,
                                right: 42,
                                bottom: 10,
                              ),
                              child: Text(
                                "Type your email",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.bluegray402,
                                  fontSize: getFontSize(
                                    12,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              16.00,
                            ),
                            width: getHorizontalSize(
                              1.00,
                            ),
                            margin: getMargin(
                              left: 151,
                              top: 13,
                              right: 151,
                              bottom: 13,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray902,
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
                        left: 20,
                        top: 33,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 2,
                              bottom: 2,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CommonImageView(
                                  svgPath: ImageConstant.imgLock,
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 12,
                                  ),
                                  child: Text(
                                    "Type your password",
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
                          CommonImageView(
                            svgPath: ImageConstant.imgCheckmark24X24,
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
                      top: 18,
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray51,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 15,
                        right: 16,
                      ),
                      child: Text(
                        "Forgot Password?",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
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
                  CustomButton(
                    width: 335,
                    text: "Sign In",
                    margin: getMargin(
                      left: 16,
                      top: 64,
                      right: 16,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 16,
                        top: 26,
                        right: 16,
                        bottom: 20,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don’t have account? ',
                              style: TextStyle(
                                color: ColorConstant.bluegray401,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign Up',
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
                          ],
                        ),
                        textAlign: TextAlign.center,
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
