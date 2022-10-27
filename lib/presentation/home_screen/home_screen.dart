import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:cashcover/presentation/history_screen/history_screen.dart';
import 'package:cashcover/presentation/homemoreservicebottomsheet_page/homemoreservicebottomsheet_page.dart';
import 'package:cashcover/presentation/select_ticket_one_screen/select_ticket_one_screen.dart';
import 'package:cashcover/presentation/pulse_nominal1_screen/pulse_nominal1_screen.dart';
import 'package:cashcover/presentation/scan_screen/scan_screen.dart';
import 'package:cashcover/presentation/send_screen/send_screen.dart';
import 'package:cashcover/presentation/top_up_method_screen/top_up_method_screen.dart';
import 'package:cashcover/presentation/withdraw_screen/withdraw_screen.dart';
import '../../widgets/custom_icon_button.dart';
import '../home_screen/widgets/listgroupeleven_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: getVerticalSize(
                255.00,
              ),
              width: size.width,
              decoration: BoxDecoration(
                color: ColorConstant.gray900,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: CommonImageView(
                        imagePath: ImageConstant.imgBg,
                        height: getVerticalSize(
                          255.00,
                        ),
                        width: size.width),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: getMargin(
                        left: 20,
                        top: 8,
                        right: 20,
                        bottom: 10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: size.width,
                              margin: getMargin(
                                right: 2,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Welcome back!",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray601,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w400,
                                            height: 1.29,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 2,
                                            right: 10,
                                          ),
                                          child: Text(
                                            "Rebecca",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.whiteA700,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.25,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                      bottom: 16,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgVectorWhiteA700,
                                      height: getVerticalSize(
                                        19.00,
                                      ),
                                      width: getHorizontalSize(
                                        15.00,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 36,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
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
                                          "Balance",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray601,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w400,
                                            height: 1.57,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "${Constants.currency} 8,523.00",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 26,
                                    bottom: 1,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                        imagePath: ImageConstant.imgImage1,
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 3,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          "90.500",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
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
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(
                                  left: 12,
                                  top: 30,
                                  right: 9,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            backgroundColor:
                                                ColorConstant.whiteA700,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                              top: Radius.circular(0),
                                            )),
                                            builder: (context) {
                                              return TopUpMethodScreen();
                                            });
                                      },
                                      child: Container(
                                        height: getVerticalSize(
                                          60.00,
                                        ),
                                        width: getHorizontalSize(
                                          60.00,
                                        ),
                                        padding: getPadding(all: 18),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.topup,
                                          height: getVerticalSize(
                                            60.00,
                                          ),
                                          width: getHorizontalSize(
                                            60.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SendScreen()),
                                        );
                                      },
                                      child: Container(
                                        height: getVerticalSize(
                                          60.00,
                                        ),
                                        width: getHorizontalSize(
                                          60.00,
                                        ),
                                        padding: getPadding(all: 18),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.homeRow2,
                                          height: getVerticalSize(
                                            60.00,
                                          ),
                                          width: getHorizontalSize(
                                            60.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WithdrawScreen()),
                                        );
                                      },
                                      child: Container(
                                        height: getVerticalSize(
                                          60.00,
                                        ),
                                        width: getHorizontalSize(
                                          60.00,
                                        ),
                                        padding: getPadding(all: 18),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.homeRow3,
                                          height: getVerticalSize(
                                            60.00,
                                          ),
                                          width: getHorizontalSize(
                                            60.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ScanScreen()),
                                        );
                                      },
                                      child: Container(
                                        height: getVerticalSize(
                                          60.00,
                                        ),
                                        width: getHorizontalSize(
                                          60.00,
                                        ),
                                        padding: getPadding(all: 18),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.homeRow4,
                                          height: getVerticalSize(
                                            60.00,
                                          ),
                                          width: getHorizontalSize(
                                            60.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: double.infinity,
                            margin: getMargin(
                              left: 20,
                              top: 33,
                              right: 20,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    FadeInLeft(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 13.0,
                                            bottom: 13.0,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: getHorizontalSize(56),
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PulseNominal1Screen()),
                                                    );
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: ColorConstant
                                                              .gray100,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: CustomIconButton(
                                                          height: 54,
                                                          width: 54,
                                                          alignment:
                                                              Alignment.center,
                                                          child:
                                                              CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .electricity,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 0,
                                                          top: 8,
                                                          right: 0,
                                                        ),
                                                        child: Text(
                                                          "Electricity",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.33,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  left: 0,
                                                ),
                                                width: getHorizontalSize(56),
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PulseNominal1Screen()),
                                                    );
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomIconButton(
                                                        height: 56,
                                                        width: 56,
                                                        alignment:
                                                            Alignment.center,
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup252,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 0,
                                                          top: 8,
                                                          right: 0,
                                                        ),
                                                        child: Text(
                                                          "Water",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.33,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  left: 0,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomIconButton(
                                                      height: 56,
                                                      width: 56,
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgGroup25Gray90056X56,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          left: 8,
                                                          top: 8,
                                                          right: 3,
                                                        ),
                                                        child: Text(
                                                          "Pay Bill",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray900,
                                                            fontSize:
                                                                getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.33,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            SelectTicketOneScreen()),
                                                  );
                                                },
                                                child: Container(
                                                  margin: getMargin(
                                                    left: 0,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: ColorConstant
                                                              .gray100,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: CustomIconButton(
                                                          height: 56,
                                                          width: 56,
                                                          alignment:
                                                              Alignment.center,
                                                          child:
                                                              CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgCreditcard,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 12,
                                                          top: 8,
                                                          right: 12,
                                                        ),
                                                        child: Text(
                                                          "Ticketing",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.33,
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
                                    FadeInLeft(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 13.0,
                                            bottom: 13.0,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: getHorizontalSize(56),
                                                margin: getMargin(
                                                  left: 0,
                                                ),
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PulseNominal1Screen()),
                                                    );
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .gray100,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child:
                                                              CustomIconButton(
                                                            height: 56,
                                                            width: 56,
                                                            alignment: Alignment
                                                                .center,
                                                            child:
                                                                CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .insurance,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 0,
                                                          top: 8,
                                                          right: 0,
                                                        ),
                                                        child: Text(
                                                          "Insurance",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.33,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomIconButton(
                                                      height: 56,
                                                      width: 56,
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgGroup257,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 8,
                                                        top: 8,
                                                        right: 8,
                                                      ),
                                                      child: Text(
                                                        "Finance",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize: getFontSize(
                                                            12,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.33,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  left: 0,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomIconButton(
                                                      height: 56,
                                                      width: 56,
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgGroup25Gray90056X56,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          left: 2,
                                                          top: 8,
                                                          right: 3,
                                                        ),
                                                        child: Text(
                                                          "Television",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray900,
                                                            fontSize:
                                                                getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.33,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            PulseNominal1Screen()),
                                                  );
                                                },
                                                child: Container(
                                                  width: getHorizontalSize(56),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomIconButton(
                                                        height: 56,
                                                        width: 56,
                                                        alignment:
                                                            Alignment.center,
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup25,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 0,
                                                          top: 8,
                                                          right: 0,
                                                        ),
                                                        child: Text(
                                                          "Pulse",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.33,
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
                                  ],
                                ),
                                FadeInLeft(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 33,
                                        right: 6,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            "History",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                20,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.40,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 5,
                                              bottom: 5,
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          HistoryScreen()),
                                                );
                                              },
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    "See all",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                      fontSize: getFontSize(
                                                        14,
                                                      ),
                                                      fontFamily: 'Urbanist',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.29,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 14,
                                                      top: 5,
                                                      bottom: 5,
                                                    ),
                                                    child: CommonImageView(
                                                      isRtl: isRtl,
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getVerticalSize(
                                                        8.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        4.00,
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
                                FadeInLeft(
                                  child: Padding(
                                    padding: getPadding(
                                      top: 20,
                                    ),
                                    child: ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Container(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                          width: getHorizontalSize(
                                            335.00,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.gray100,
                                          ),
                                        );
                                      },
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return ListgroupelevenItemWidget();
                                      },
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
          ],
        ),
      ),
    );
  }
}
