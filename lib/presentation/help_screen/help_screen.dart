import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_search_view.dart';

class HelpScreen extends StatefulWidget {
  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  TextEditingController searchController = TextEditingController();

  bool opened=false;

  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorConstant.gray901,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        left: 24,
                        top: 16,
                        right: 24,
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
                              svgPath:
                                  ImageConstant.imgVectorWhiteA70015X7,
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
                              "Help Center",
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
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 51,
                        right: 20,
                      ),
                      child: Text(
                        "How can we help?",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            24,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        327.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 12,
                        right: 20,
                      ),
                      child: Text(
                        "Didn’t find the answer you were looking for? Contact our support center!",
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.bluegray51,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 18,
                        right: 20,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgContact,
                        height: getVerticalSize(
                          32.00,
                        ),
                        width: getHorizontalSize(
                          128.00,
                        ),
                      ),
                    ),
                  ),
                  CustomSearchView(
                    width: 335,
                    focusNode: FocusNode(),
                    controller: searchController,
                    hintText: "Search topics or questions",
                    margin: getMargin(
                      left: 20,
                      top: 39,
                      right: 20,
                      bottom: 25,
                    ),
                    alignment: Alignment.center,
                    prefix: Container(
                      margin: getMargin(
                        left: 19,
                        top: 14,
                        right: 15,
                        bottom: 14,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgSearchGray900,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      minWidth: getSize(
                        20.00,
                      ),
                      minHeight: getSize(
                        20.00,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FadeInDown(
                child: Accordion(
                    maxOpenSections: 2,
                    headerBorderRadius: 20,
                    contentBorderColor: Colors.transparent,
                    contentVerticalPadding: getVerticalSize(24),
                    contentHorizontalPadding: getHorizontalSize(0),
                    
                  rightIcon:  Padding(
                  padding: EdgeInsets.only(
                top: getVerticalSize(
                  20.00,
                ),
                right: getHorizontalSize(
                  30.00,
                ),
                left: getHorizontalSize(
                  30.00,
                ),
                bottom: getVerticalSize(
                  20.00,
                ),
                  ),
                  child: Container(
                        height: getSize(
                          28.00,
                        ),
                        width: getSize(
                          28.00,
                        ),
                        // margin: getMargin(
                        //   top: 16,
                        //   right: 24,
                        //   bottom: 16,
                        // ),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.gray100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                14.00,
                              ),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Icon(Icons.add,
                            size: getSize(16)),
                          ),
                        ),
                      ),
                    
                ),
                    disableScrolling: false,
                    
                    flipRightIconIfOpen: true,
                    headerBackgroundColor: ColorConstant.whiteA700,
                    headerBackgroundColorOpened: ColorConstant.whiteA700,
                    paddingBetweenClosedSections: getVerticalSize(0),
                    scaleWhenAnimating: false,
                    openAndCloseAnimation: false,
                    headerPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    
                    sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                    sectionClosingHapticFeedback: SectionHapticFeedback.light,
                    children: [
                    AccordionSection(
                      
                      isOpen: false,
                      header:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                Padding(
                  padding: EdgeInsets.only(
                left: getHorizontalSize(
                  24.00,
                ),
                right: getHorizontalSize(
                  24.00,
                ),
                top: getVerticalSize(
                  0.21,
                ),
                bottom: getVerticalSize(
                  0.20,
                ),
                  ),
                  child: Text(
                "How to crete an account?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                                    color: ColorConstant.gray905,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                    height: 1.29,
                                  ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(
                //     top: getVerticalSize(
                //       31.00,
                //     ),
                //     right: getHorizontalSize(
                //       30.00,
                //     ),
                //     left: getHorizontalSize(
                //       30.00,
                //     ),
                //     bottom: getVerticalSize(
                //       31.00,
                //     ),
                //   ),
                //   child: Container(
                //     height: getVerticalSize(
                //       10.00,
                //     ),
                //     width: getHorizontalSize(
                //       12.00,
                //     ),
                //     child: SvgPicture.asset(
                //       ImageConstant.imgVector6,
                //       fit: BoxFit.fill,
                //     ),
                //   ),
                // ),
                
                
                ],
                      ),
                                                
                                                                   
                      content:
                 Padding(
                   padding:  EdgeInsets.symmetric(
                horizontal: getHorizontalSize(24)
                   ),
                   child: Column(
                 children: [
                  Container(
                    height: getVerticalSize(1),
                    color: ColorConstant.gray200,
                  ),
                  SizedBox(
                    height: getVerticalSize(20),
                  ),
                   Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      
                      maxLines: null,
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
                 
                  SizedBox(
                    height: getVerticalSize(20),
                  ),
                 ],
                   ),
                 ),
                    ),
                    
                    AccordionSection(
                      
                      isOpen: false,
                      header:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                Padding(
                  padding: EdgeInsets.only(
                left: getHorizontalSize(
                  24.00,
                ),
                right: getHorizontalSize(
                  24.00,
                ),
                top: getVerticalSize(
                  0.21,
                ),
                bottom: getVerticalSize(
                  0.20,
                ),
                  ),
                  child: Text(
                "How to crete an account?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                                    color: ColorConstant.gray905,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                    height: 1.29,
                                  ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(
                //     top: getVerticalSize(
                //       31.00,
                //     ),
                //     right: getHorizontalSize(
                //       30.00,
                //     ),
                //     left: getHorizontalSize(
                //       30.00,
                //     ),
                //     bottom: getVerticalSize(
                //       31.00,
                //     ),
                //   ),
                //   child: Container(
                //     height: getVerticalSize(
                //       10.00,
                //     ),
                //     width: getHorizontalSize(
                //       12.00,
                //     ),
                //     child: SvgPicture.asset(
                //       ImageConstant.imgVector6,
                //       fit: BoxFit.fill,
                //     ),
                //   ),
                // ),
                
                
                ],
                      ),
                                                
                                                                   
                      content:
                 Padding(
                   padding:  EdgeInsets.symmetric(
                horizontal: getHorizontalSize(24)
                   ),
                   child: Column(
                 children: [
                  Container(
                    height: getVerticalSize(1),
                    color: ColorConstant.gray200,
                  ),
                  SizedBox(
                    height: getVerticalSize(20),
                  ),
                   Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      
                      maxLines: null,
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
                 
                  SizedBox(
                    height: getVerticalSize(20),
                  ),
                 ],
                   ),
                 ),
                    ),
                    
                    AccordionSection(
                      
                      isOpen: false,
                      header:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                Padding(
                  padding: EdgeInsets.only(
                left: getHorizontalSize(
                  24.00,
                ),
                right: getHorizontalSize(
                  24.00,
                ),
                top: getVerticalSize(
                  0.21,
                ),
                bottom: getVerticalSize(
                  0.20,
                ),
                  ),
                  child: Text(
                "How to crete an account?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                                    color: ColorConstant.gray905,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                    height: 1.29,
                                  ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(
                //     top: getVerticalSize(
                //       31.00,
                //     ),
                //     right: getHorizontalSize(
                //       30.00,
                //     ),
                //     left: getHorizontalSize(
                //       30.00,
                //     ),
                //     bottom: getVerticalSize(
                //       31.00,
                //     ),
                //   ),
                //   child: Container(
                //     height: getVerticalSize(
                //       10.00,
                //     ),
                //     width: getHorizontalSize(
                //       12.00,
                //     ),
                //     child: SvgPicture.asset(
                //       ImageConstant.imgVector6,
                //       fit: BoxFit.fill,
                //     ),
                //   ),
                // ),
                
                
                ],
                      ),
                                                
                                                                   
                      content:
                 Padding(
                   padding:  EdgeInsets.symmetric(
                horizontal: getHorizontalSize(24)
                   ),
                   child: Column(
                 children: [
                  Container(
                    height: getVerticalSize(1),
                    color: ColorConstant.gray200,
                  ),
                  SizedBox(
                    height: getVerticalSize(20),
                  ),
                   Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      
                      maxLines: null,
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
                 
                  SizedBox(
                    height: getVerticalSize(20),
                  ),
                 ],
                   ),
                 ),
                    ),
                    
                    AccordionSection(
                      
                      isOpen: false,
                      header:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                Padding(
                  padding: EdgeInsets.only(
                left: getHorizontalSize(
                  24.00,
                ),
                right: getHorizontalSize(
                  24.00,
                ),
                top: getVerticalSize(
                  0.21,
                ),
                bottom: getVerticalSize(
                  0.20,
                ),
                  ),
                  child: Text(
                "How to crete an account?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                                    color: ColorConstant.gray905,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                    height: 1.29,
                                  ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(
                //     top: getVerticalSize(
                //       31.00,
                //     ),
                //     right: getHorizontalSize(
                //       30.00,
                //     ),
                //     left: getHorizontalSize(
                //       30.00,
                //     ),
                //     bottom: getVerticalSize(
                //       31.00,
                //     ),
                //   ),
                //   child: Container(
                //     height: getVerticalSize(
                //       10.00,
                //     ),
                //     width: getHorizontalSize(
                //       12.00,
                //     ),
                //     child: SvgPicture.asset(
                //       ImageConstant.imgVector6,
                //       fit: BoxFit.fill,
                //     ),
                //   ),
                // ),
                
                
                ],
                      ),
                                                
                                                                   
                      content:
                 Padding(
                   padding:  EdgeInsets.symmetric(
                horizontal: getHorizontalSize(24)
                   ),
                   child: Column(
                 children: [
                  Container(
                    height: getVerticalSize(1),
                    color: ColorConstant.gray200,
                  ),
                  SizedBox(
                    height: getVerticalSize(20),
                  ),
                   Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      
                      maxLines: null,
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
                 
                  SizedBox(
                    height: getVerticalSize(20),
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
    );
  }
}
