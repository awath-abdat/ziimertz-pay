import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/sign_in_empty_screen/sign_in_empty_screen.dart';
import 'package:cashcover/presentation/sign_up_empty_screen/sign_up_empty_screen.dart';
import 'package:cashcover/widgets/custom_button.dart';

class Onboarding2GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                768.00,
              ),
              width: size.width,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: getPadding(
                        bottom: 10,
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgGradient589X375,
                        height: getVerticalSize(
                          589.00,
                        ),
                        width: getHorizontalSize(
                          375.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: getVerticalSize(
                        629.00,
                      ),
                      width: getHorizontalSize(
                        369.00,
                      ),
                      margin: getMargin(
                        left: 6,
                        top: 26,
                        bottom: 26,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CommonImageView(
                              imagePath: ImageConstant.imgImage629X369,
                              height: getVerticalSize(
                                629.00,
                              ),
                              width: getHorizontalSize(
                                369.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: getVerticalSize(
                                24.00,
                              ),
                              width: getHorizontalSize(
                                36.00,
                              ),
                              margin: getMargin(
                                left: 124,
                                right: 124,
                                bottom: 10,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 10,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgVector132,
                                        height: getVerticalSize(
                                          17.00,
                                        ),
                                        width: getHorizontalSize(
                                          34.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        bottom: 10,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgVector131,
                                        height: getVerticalSize(
                                          17.00,
                                        ),
                                        width: getHorizontalSize(
                                          36.00,
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
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: getMargin(
                        top: 10,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              303.00,
                            ),
                            margin: getMargin(
                              left: 28,
                              top: 37,
                              right: 28,
                            ),
                            child: Text(
                              "The most complete product in just one application",
                              maxLines: null,
                              textAlign: TextAlign.center,
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
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SignUpEmptyScreen()),
  );
                            },
                            child: CustomButton(
                              width: 320,
                              text: "Get Started",
                              margin: getMargin(
                                left: 28,
                                top: 37,
                                right: 27,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SignInEmptyScreen()),
  );
                            },
                            child: Container(
                              margin: getMargin(
                                left: 28,
                                top: 20,
                                right: 28,
                                bottom: 20,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'H',
                                      style: TextStyle(
                                        color: ColorConstant.bluegray300,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'ave ',
                                      style: TextStyle(
                                        color: ColorConstant.bluegray300,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'an ',
                                      style: TextStyle(
                                        color: ColorConstant.bluegray300,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'account? ',
                                      style: TextStyle(
                                        color: ColorConstant.bluegray300,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Login',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
