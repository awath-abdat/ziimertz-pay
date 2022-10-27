import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/home.dart';

// ignore: must_be_immutable
class SuccessStateTransferOneScreen extends StatelessWidget {
  bool isWithdraw;
  SuccessStateTransferOneScreen(
    {this.isWithdraw=false, }
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray900,
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      649.00,
                    ),
                    width: getHorizontalSize(
                      305.00,
                    ),
                    margin: getMargin(
                      left: 35,
                      top: 12,
                      right: 35,
                      bottom: 20,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: getMargin(
                              top: 10,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray100,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 82,
                                    right: 24,
                                  ),
                                  child: Text(
                                    isWithdraw?"Withdraw Success":
                                    "Transfer money was successful",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
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
                                    left: 24,
                                    top: 12,
                                    right: 24,
                                  ),
                                  child: Text(isWithdraw?"Below is your withdraw summary":
                                    "You Earned 120 Points ☝️",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray402,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w400,
                                      height: 1.57,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: getMargin(
                                    left: 24,
                                    top: 20,
                                    right: 24,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray100,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 50,
                                          top: 16,
                                          right: 50,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray900,
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
                                                left: 6,
                                              ),
                                              child: Text(
                                                "14.500",
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
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 50,
                                          top: 3,
                                          right: 50,
                                          bottom: 20,
                                        ),
                                        child: Text(
                                          isWithdraw?
                                          "you withdraw":
                                          "you paid",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
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
                               isWithdraw?
                               SizedBox():
                                Column(
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 28,
                                        right: 24,
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
                                              bottom: 4,
                                            ),
                                            child: Text(
                                              "From",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.gray900,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                height: 1.29,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Zhafira Azalea",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.right,
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
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 24,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            "${Constants.appName}",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.bluegray402,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                            ),
                                          ),
                                          Text(
                                            "**** 8127",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: ColorConstant.bluegray402,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: getVerticalSize(
                                        1.00,
                                      ),
                                      width: getHorizontalSize(
                                        241.00,
                                      ),
                                      margin: getMargin(
                                        left: 24,
                                        top: 20,
                                        right: 24,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.indigo51,
                                      ),
                                    ),
                                  ],
                                ),
                              
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 16,
                                    right: 24,
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
                                          bottom: 4,
                                        ),
                                        child: Text(
                                          "To",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            height: 1.29,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Annette Black",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
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
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Credit Card",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.bluegray402,
                                          fontSize: getFontSize(
                                            12,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w400,
                                          height: 1.33,
                                        ),
                                      ),
                                      Text(
                                        "Visa 0912",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: ColorConstant.bluegray402,
                                          fontSize: getFontSize(
                                            12,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w400,
                                          height: 1.33,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: getHorizontalSize(
                                    241.00,
                                  ),
                                  margin: getMargin(
                                    left: 24,
                                    top: 20,
                                    right: 24,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.indigo51,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 16,
                                    right: 24,
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
                                          bottom: 4,
                                        ),
                                        child: Text(
                                          "Date",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            height: 1.29,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "24 Jul 2020",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
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
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 32,
                                        right: 32,
                                      ),
                                      child: Text(
                                        "15:30",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: ColorConstant.bluegray402,
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
                                isWithdraw?
                                SizedBox(height: getVerticalSize(80),):SizedBox(),
                                
                                
                                InkWell(
                                  onTap: (){
                                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    Home()), (Route<dynamic> route) => false);
                                  },
                                  child: Padding(
                                    padding: getPadding(
                                      left: 24,
                                      top: 39,
                                      right: 24,
                                      bottom: 20,
                                    ),
                                    child: Text(
                                      "Go Back To Home",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
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
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: getMargin(
                              left: 70,
                              right: 70,
                              bottom: 10,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA7004c,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  82.00,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: getSize(
                                    116.00,
                                  ),
                                  width: getSize(
                                    116.00,
                                  ),
                                  margin: getMargin(
                                    all: 24,
                                  ),
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.gray900,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          58.00,
                                        ),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 39,
                                              top: 40,
                                              right: 36,
                                              bottom: 40,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorWhiteA70026X40,
                                              height: getVerticalSize(
                                                26.00,
                                              ),
                                              width: getHorizontalSize(
                                                40.00,
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
