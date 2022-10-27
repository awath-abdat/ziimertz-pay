import '../sign_up_typing_screen/widgets/listuser_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';

class SignUpTypingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          margin: getMargin(
            left: 20,
            top: 20,
            right: 20,
            bottom: 12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 7,
                              right: 10,
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
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 36,
                              right: 10,
                            ),
                            child: Text(
                              "Sign Up",
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
                              left: 4,
                              top: 8,
                              right: 10,
                            ),
                            child: Text(
                              "Create account and enjoy all services",
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
                          Container(
                            margin: getMargin(
                              top: 29,
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
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 4,
                                top: 17,
                                right: 3,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  Text(
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
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 30,
                            ),
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return ListuserItemWidget();
                              },
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 12,
                                top: 33,
                                right: 12,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                      bottom: 2,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                              top: 18,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray51,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 15,
                              right: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 6,
                                    bottom: 8,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgClose8X8,
                                    height: getSize(
                                      8.00,
                                    ),
                                    width: getSize(
                                      8.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 16,
                                  ),
                                  child: Text(
                                    "Minimum 8 characters",
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
                          Padding(
                            padding: getPadding(
                              left: 3,
                              top: 8,
                              right: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 6,
                                    bottom: 8,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgVectorGreen300,
                                    height: getVerticalSize(
                                      6.00,
                                    ),
                                    width: getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 14,
                                  ),
                                  child: Text(
                                    "Atleast 1 number (1-9)",
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
                          Padding(
                            padding: getPadding(
                              left: 3,
                              top: 8,
                              right: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 6,
                                    bottom: 8,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgVectorGreen300,
                                    height: getVerticalSize(
                                      6.00,
                                    ),
                                    width: getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 14,
                                  ),
                                  child: Text(
                                    "Atleast lowercase or uppercase letters",
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
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 16,
                                right: 8,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 20,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgCheckmark,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      295.00,
                                    ),
                                    margin: getMargin(
                                      left: 8,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'I agree to the company ',
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
                                          TextSpan(
                                            text: 'Term of Service',
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
                                          TextSpan(
                                            text: ' and ',
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
                                          TextSpan(
                                            text: 'Privacy Policy',
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
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomButton(
                            width: 335,
                            text: "Sign Up",
                            margin: getMargin(
                              top: 74,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 12,
                                top: 20,
                                right: 12,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'H',
                                      style: TextStyle(
                                        color: ColorConstant.bluegray300,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        height: 1.57,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'ave ',
                                      style: TextStyle(
                                        color: ColorConstant.bluegray300,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        height: 1.57,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'an ',
                                      style: TextStyle(
                                        color: ColorConstant.bluegray300,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        height: 1.57,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'account? ',
                                      style: TextStyle(
                                        color: ColorConstant.bluegray300,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        height: 1.57,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Sign In',
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
            ],
          ),
        ),
      ),
    );
  }
}
