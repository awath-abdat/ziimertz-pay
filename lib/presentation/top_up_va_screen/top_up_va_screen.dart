import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/top_up_va_detail_screen/top_up_va_detail_screen.dart';

class TopUpVaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SafeArea(
          child: Column(
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
                                "Virtual Account",
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
                          width: getHorizontalSize(40),
                         ),
                         
                          ],
                        ),
                      ),
                    ),
                  
        
        
              Expanded(
        
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   
                    
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 20,
                            top: 31,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.yellow100,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 21,
                                  top: 28,
                                  bottom: 27,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgComplain1,
                                  height: getSize(
                                    45.00,
                                  ),
                                  width: getSize(
                                    45.00,
                                  ),
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 18,
                                  top: 19,
                                  right: 17,
                                  bottom: 22,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        right: 10,
                                      ),
                                      child: Text(
                                        "Notes",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.black900,
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
                                      width: getHorizontalSize(
                                        234.00,
                                      ),
                                      margin: getMargin(
                                        top: 7,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Top up via Virtual Account ',
                                              style: TextStyle(
                                                color: ColorConstant.bluegray903,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w400,
                                                height: 1.33,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '24 hours service',
                                              style: TextStyle(
                                                color: ColorConstant.bluegray903,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                height: 1.33,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '.\nAdmin fee ',
                                              style: TextStyle(
                                                color: ColorConstant.bluegray903,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w400,
                                                height: 1.33,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '${Constants.currency} 3.500',
                                              style: TextStyle(
                                                color: ColorConstant.bluegray903,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                height: 1.33,
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
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 20,
                            top: 32,
                            right: 20,
                          ),
                          child: Text(
                            "Choose Bank",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
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
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            TopUpVaDetailScreen()
                            ));
                          },
                          child: Container(
                            margin: getMargin(
                              left: 20,
                              top: 6,
                              bottom: 8,
                              right: 19,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 20,
                                    bottom: 19,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                          bottom: 5,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgLightbulb,
                                          height: getSize(
                                            32.00,
                                          ),
                                          width: getSize(
                                            32.00,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 24,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                right: 10,
                                              ),
                                              child: Text(
                                                "BCA",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
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
                                            Padding(
                                              padding: getPadding(
                                                top: 7,
                                              ),
                                              child: Text(
                                                "ATM, Mobile Banking, Internet Banking",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.bluegray401,
                                                  fontSize: getFontSize(
                                                    12,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.33,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 34,
                                    right: 9,
                                    bottom: 34,
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
                          top: 8,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.bluegray51,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 20,
                            top: 7,
                            right: 19,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                  bottom: 19,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 4,
                                        bottom: 5,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgXmlid19,
                                        height: getSize(
                                          32.00,
                                        ),
                                        width: getSize(
                                          32.00,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 24,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              right: 10,
                                            ),
                                            child: Text(
                                              " BRI",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
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
                                          Padding(
                                            padding: getPadding(
                                              top: 7,
                                            ),
                                            child: Text(
                                              "ATM, Mobile Banking, Internet Banking",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.bluegray401,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w400,
                                                height: 1.33,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 34,
                                  right: 9,
                                  bottom: 34,
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
                          335.00,
                        ),
                        margin: getMargin(
                          left: 20,
                          top: 8,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.bluegray51,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 20,
                            top: 7,
                            right: 19,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                  bottom: 19,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 4,
                                        bottom: 5,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.img1280pxbanknega,
                                        height: getSize(
                                          32.00,
                                        ),
                                        width: getSize(
                                          32.00,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 24,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              right: 10,
                                            ),
                                            child: Text(
                                              "BNI",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
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
                                          Padding(
                                            padding: getPadding(
                                              top: 7,
                                            ),
                                            child: Text(
                                              "ATM, Mobile Banking, Internet Banking",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.bluegray401,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w400,
                                                height: 1.33,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 34,
                                  right: 9,
                                  bottom: 34,
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
                          335.00,
                        ),
                        margin: getMargin(
                          left: 20,
                          top: 8,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.bluegray51,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 20,
                            top: 7,
                            right: 19,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                  bottom: 19,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                        bottom: 10,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgDollar,
                                        height: getVerticalSize(
                                          21.00,
                                        ),
                                        width: getHorizontalSize(
                                          32.00,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 24,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              right: 10,
                                            ),
                                            child: Text(
                                              "Citibank",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
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
                                          Padding(
                                            padding: getPadding(
                                              top: 7,
                                            ),
                                            child: Text(
                                              "ATM, Mobile Banking, Internet Banking",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.bluegray401,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w400,
                                                height: 1.33,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 34,
                                  right: 9,
                                  bottom: 34,
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
                          335.00,
                        ),
                        margin: getMargin(
                          left: 20,
                          top: 8,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.bluegray51,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 20,
                            top: 7,
                            right: 19,
                            bottom: 64,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                  bottom: 19,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 4,
                                        bottom: 5,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgCimblogo1,
                                        height: getVerticalSize(
                                          32.00,
                                        ),
                                        width: getHorizontalSize(
                                          27.00,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 28,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              right: 10,
                                            ),
                                            child: Text(
                                              "CIMB Bank",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
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
                                          Padding(
                                            padding: getPadding(
                                              top: 7,
                                            ),
                                            child: Text(
                                              "ATM, Mobile Banking, Internet Banking",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.bluegray401,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w400,
                                                height: 1.33,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 34,
                                  right: 9,
                                  bottom: 34,
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
                    ],
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
