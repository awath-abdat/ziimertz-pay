import '../receipt_screen/widgets/slidertagihan_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:cashcover/core/app_export.dart';

import '../receiptsettingsbottomsheet_page/receiptsettingsbottomsheet_page.dart';

class ReceiptScreen extends StatefulWidget {
  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  int silderIndex = 0;
  
  int noOfRecipts=3;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
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
                                            return ReceiptsettingsbottomsheetPage();
                                          });
                            },
                            child: Padding(
                              padding: getPadding(
                                left: 20,
                                top: 16,
                                bottom: 16,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgSettings,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: getPadding(
                                top: 16,
                                right: 20,
                                bottom: 16,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgClose24X24,
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 19,
                          top: 13,
                          bottom: 50,
                          right: 19,
                        ),
                        child: Text(
                          "Receipt",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              36,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                 
                 
                  Container(
                    height: getVerticalSize(350),
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        height: getVerticalSize(
                          350.00,
                        ),
                        initialPage: 0,
                        autoPlay: false,
                        viewportFraction: .7,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          silderIndex = index;
                          setState(() {
                            
                          });
                        },
                      ),
                      itemCount: noOfRecipts,
                      itemBuilder: (context, index, realIndex) {
                        return SlidertagihanItemWidget();
                      },
                    ),
                  ),
                 
                 
                 
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        10.00,
                      ),
                      margin: getMargin(
                        left: 157,
                        top: 47,
                        right: 157,
                      ),
                      child:AnimatedSmoothIndicator(
                       activeIndex: silderIndex,
                        count: noOfRecipts,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 8,
                          activeDotColor: ColorConstant.gray900,
                          dotColor: ColorConstant.bluegray51,
                          dotHeight: getVerticalSize(
                            10.00,
                          ),
                          dotWidth: getHorizontalSize(
                            10.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 89,
                            right: 10,
                            bottom: 20,
                          ),
                          child: CommonImageView(

                            imagePath: ImageConstant.print,
                            height: getVerticalSize(
                              48.00,
                            ),
                            width: getHorizontalSize(
                              48.00,
                            ),
                          ),
                        ),
                    
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 89,
                            right: 10,
                            bottom: 20,
                          ),
                          child: CommonImageView(

                            imagePath: ImageConstant.share,
                            height: getVerticalSize(
                              48.00,
                            ),
                            width: getHorizontalSize(
                              48.00,
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
    );
  }
}
