import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/onboarding_one_screen/onboarding_one_screen.dart';

class SpashScreen0twoScreen extends StatefulWidget {
  @override
  State<SpashScreen0twoScreen> createState() => _SpashScreen0twoScreenState();
}

class _SpashScreen0twoScreenState extends State<SpashScreen0twoScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => OnboardingOneScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: size.width,
              child: SingleChildScrollView(
                child: Container(
                  height: getVerticalSize(
                    768.00,
                  ),
                  width: size.width,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CommonImageView(
                          imagePath: ImageConstant.imgGradient768X375,
                          height: getVerticalSize(
                            768.00,
                          ),
                          width: getHorizontalSize(
                            375.00,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: getVerticalSize(
                            40.00,
                          ),
                          width: getHorizontalSize(
                            63.00,
                          ),
                          margin: getMargin(
                            left: 75,
                            top: 293,
                            right: 75,
                            bottom: 293,
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
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        1.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgVector132,
                                      height: getVerticalSize(
                                        28.00,
                                      ),
                                      width: getHorizontalSize(
                                        59.00,
                                      ),
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
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        1.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgVector131,
                                      height: getVerticalSize(
                                        29.00,
                                      ),
                                      width: getHorizontalSize(
                                        63.00,
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
            Padding(
              padding: const EdgeInsets.only(bottom: 140, left: 60),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Ziimertz Pay",
                  style: TextStyle(
                    fontSize: getHorizontalSize(30),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                    color: ColorConstant.black900,
                    letterSpacing: 0.07,
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
