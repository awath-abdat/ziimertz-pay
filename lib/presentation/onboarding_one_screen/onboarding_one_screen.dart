import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/onboarding_2_get_started_screen/onboarding_2_get_started_screen.dart';

class OnboardingOneScreen extends StatefulWidget {
  @override
  State<OnboardingOneScreen> createState() => _OnboardingOneScreenState();
}

class _OnboardingOneScreenState extends State<OnboardingOneScreen> {
  // int activeIndex = 0;

  PageController? _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    _pageController = new PageController(initialPage: _currentIndex);
    _pageController!.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale == Constants.arLocal;
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
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CommonImageView(
                      imagePath: ImageConstant.imgGradient1,
                      height: getVerticalSize(
                        768.00,
                      ),
                      width: getHorizontalSize(
                        375.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: getMargin(
                        top: 25,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: getVerticalSize(
                                24.00,
                              ),
                              width: getHorizontalSize(
                                36.00,
                              ),
                              margin: getMargin(
                                left: 130,
                                right: 130,
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
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: getVerticalSize(
                                682.00,
                              ),
                              width: size.width,
                              margin: getMargin(
                                top: 35,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 10,
                                        right: 5,
                                        bottom: 10,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgImage,
                                        height: getVerticalSize(
                                          505.00,
                                        ),
                                        width: getHorizontalSize(
                                          336.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: getVerticalSize(
                                        360.00,
                                      ),
                                      width: size.width,
                                      margin: getMargin(
                                        top: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.gray900,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: CommonImageView(
                                              imagePath: ImageConstant.circle,
                                              height: getVerticalSize(
                                                90.00,
                                              ),
                                              width: getHorizontalSize(
                                                90.00,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              margin: getMargin(
                                                left: 20,
                                                top: 50,
                                                right: 20,
                                                bottom: 0,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height:
                                                        getVerticalSize(181),
                                                    child: PageView(
                                                        controller:
                                                            _pageController,
                                                        onPageChanged: (index) {
                                                          _currentIndex = index;
                                                          setState(() {});
                                                        },
                                                        children: [
                                                          FadeInUp(
                                                              child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                  260.00,
                                                                ),
                                                                margin:
                                                                    getMargin(
                                                                  right: 5,
                                                                ),
                                                                child: Text(
                                                                  "All in one E-Wallet solution",
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style:
                                                                      TextStyle(
                                                                    color: ColorConstant
                                                                        .whiteA700,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      32,
                                                                    ),
                                                                    fontFamily:
                                                                        'Urbanist',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    height:
                                                                        1.19,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                  265.00,
                                                                ),
                                                                margin:
                                                                    getMargin(
                                                                  top: 20,
                                                                ),
                                                                child: Text(
                                                                  "Money transfer, Utility Bill payments and flight booking.",
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style:
                                                                      TextStyle(
                                                                    color: ColorConstant
                                                                        .bluegray401,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      16,
                                                                    ),
                                                                    fontFamily:
                                                                        'Urbanist',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.50,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )),
                                                          FadeInUp(
                                                              child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                  260.00,
                                                                ),
                                                                margin:
                                                                    getMargin(
                                                                  right: 5,
                                                                ),
                                                                child: Text(
                                                                  "Transfer and Receive Money",
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style:
                                                                      TextStyle(
                                                                    color: ColorConstant
                                                                        .whiteA700,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      32,
                                                                    ),
                                                                    fontFamily:
                                                                        'Urbanist',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    height:
                                                                        1.19,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                  265.00,
                                                                ),
                                                                margin:
                                                                    getMargin(
                                                                  top: 20,
                                                                ),
                                                                child: Text(
                                                                  "Send and receive money seamlessly from any part of the world.",
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style:
                                                                      TextStyle(
                                                                    color: ColorConstant
                                                                        .bluegray401,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      16,
                                                                    ),
                                                                    fontFamily:
                                                                        'Urbanist',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.50,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )),
                                                          FadeInUp(
                                                              child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                  260.00,
                                                                ),
                                                                margin:
                                                                    getMargin(
                                                                  right: 5,
                                                                ),
                                                                child: Text(
                                                                  "Mobile money and Bank Tranfer",
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style:
                                                                      TextStyle(
                                                                    color: ColorConstant
                                                                        .whiteA700,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      32,
                                                                    ),
                                                                    fontFamily:
                                                                        'Urbanist',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    height:
                                                                        1.19,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                  265.00,
                                                                ),
                                                                margin:
                                                                    getMargin(
                                                                  top: 20,
                                                                ),
                                                                child: Text(
                                                                  "Top up and withdraw money using Mobile money and bank transfer instantly and securely.",
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style:
                                                                      TextStyle(
                                                                    color: ColorConstant
                                                                        .bluegray401,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      16,
                                                                    ),
                                                                    fontFamily:
                                                                        'Urbanist',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.50,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )),
                                                        ]),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        getPadding(top: 16),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            8.00,
                                                          ),
                                                          margin: getMargin(
                                                            top: 0,
                                                            right: 0,
                                                          ),
                                                          child:
                                                              AnimatedSmoothIndicator(
                                                            activeIndex:
                                                                _currentIndex,
                                                            count: 3,
                                                            axisDirection:
                                                                Axis.horizontal,
                                                            effect:
                                                                ScrollingDotsEffect(
                                                              spacing: 9,
                                                              activeDotColor:
                                                                  ColorConstant
                                                                      .bluegray100,
                                                              dotColor:
                                                                  ColorConstant
                                                                      .bluegray700,
                                                              dotHeight:
                                                                  getVerticalSize(
                                                                4.00,
                                                              ),
                                                              dotWidth:
                                                                  getHorizontalSize(
                                                                8.00,
                                                              ),
                                                              activeDotScale: 2,
                                                              radius: 2,
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          onTap: () {
                                                            if (_currentIndex <
                                                                2) {
                                                              _pageController!.animateToPage(
                                                                  _currentIndex +
                                                                      1,
                                                                  duration:
                                                                      Duration(
                                                                          seconds:
                                                                              1),
                                                                  curve: Curves
                                                                      .fastOutSlowIn);
                                                            } else {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            Onboarding2GetStartedScreen()),
                                                              );
                                                            }
                                                          },
                                                          child: isRtl
                                                              ? RotatedBox(
                                                                  quarterTurns:
                                                                      2,
                                                                  child: Image
                                                                      .asset(
                                                                    ImageConstant
                                                                        .onBoardingArrow,
                                                                    width:
                                                                        getHorizontalSize(
                                                                            59),
                                                                    height:
                                                                        getVerticalSize(
                                                                            59),
                                                                  ),
                                                                )
                                                              : Image.asset(
                                                                  ImageConstant
                                                                      .onBoardingArrow,
                                                                  width:
                                                                      getHorizontalSize(
                                                                          59),
                                                                  height:
                                                                      getVerticalSize(
                                                                          59),
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
