import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/success_state_transfer_one_screen/success_state_transfer_one_screen.dart';

class TransferDetailsScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: 
        Container(
         width: getHorizontalSize(330),
            height: getVerticalSize(50),
        child: FloatingActionButton.extended(
          elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(getHorizontalSize(5))
                  ),
                  backgroundColor: ColorConstant.black900,
                  foregroundColor: ColorConstant.whiteA700,
                  extendedTextStyle: TextStyle(
                    color: ColorConstant.gray50,
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.07,
                  ),
      
                  onPressed: (){
                   Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SuccessStateTransferOneScreen()),
  );
                  },
                  label:Text('Send now')),
      ),
       
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
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
                              "Send to",
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
                    alignment: Alignment.center,
                    child: Container(
                      // height: getVerticalSize(
                      //   286.00,
                      // ),
                      width: getHorizontalSize(
                        336.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 31,
                        right: 19,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 1,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorConstant.gray200,
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
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 23,
                                      top: 22,
                                      right: 23,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              21.00,
                                            ),
                                          ),
                                          child: CommonImageView(
                                            imagePath: ImageConstant.imgOval4,
                                            height: getSize(
                                              42.00,
                                            ),
                                            width: getSize(
                                              42.00,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            left: 16,
                                            top: 3,
                                            bottom: 1,
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
                                                  "Annette Black",
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
                                              Padding(
                                                padding: getPadding(
                                                  top: 4,
                                                ),
                                                child: Text(
                                                  "jessica.hanson@gmail.com",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .bluegray402,
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
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 23,
                                        top: 48,
                                        right: 23,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            "You sent",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
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
                                          Padding(
                                            padding: getPadding(
                                              top: 2,
                                              bottom: 2,
                                            ),
                                            child: Text(
                                              " ${Constants.currency} 50.000",
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
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 23,
                                        top: 16,
                                        right: 23,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            "Fee",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
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
                                          Padding(
                                            padding: getPadding(
                                              top: 2,
                                              bottom: 2,
                                            ),
                                            child: Text(
                                              "${Constants.currency} 500",
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
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                    width: getHorizontalSize(
                                      282.00,
                                    ),
                                    margin: getMargin(
                                      left: 23,
                                      top: 16,
                                      right: 23,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.bluegray51,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 23,
                                        top: 25,
                                        right: 23,
                                        bottom: 32,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 10,
                                              bottom: 7,
                                            ),
                                            child: Text(
                                              "You paid",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
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
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 3,
                                                  bottom: 12,
                                                ),
                                                child: Text(
                                                  "${Constants.currency}",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
                                                    fontSize: getFontSize(
                                                      16,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.50,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 3,
                                                ),
                                                child: Text(
                                                  " 50.500",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
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
                                        ],
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
                              top: 88,
                              right: 1,
                              bottom: 88,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray51,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Container(
                  //     width: double.infinity,
                  //     margin: getMargin(
                  //       top: 0,
                  //     ),
                  //     decoration: BoxDecoration(
                  //       color: ColorConstant.whiteA700,
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: ColorConstant.gray5003f,
                  //           spreadRadius: getHorizontalSize(
                  //             2.00,
                  //           ),
                  //           blurRadius: getHorizontalSize(
                  //             2.00,
                  //           ),
                  //           offset: Offset(
                  //             0,
                  //             0,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     child: Column(
                  //       mainAxisSize: MainAxisSize.min,
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         CustomButton(
                  //           width: 335,
                  //           text: "Send Now",
                  //           margin: getMargin(
                  //             left: 20,
                  //             top: 12,
                  //             right: 20,
                  //             bottom: 20,
                  //           ),
                  //           variant: ButtonVariant.FillBlack900,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
               
               
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
