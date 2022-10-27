import 'package:animate_do/animate_do.dart';
import 'package:cashcover/presentation/pulse_nominal1_screen/pulse_nominal1_screen.dart';
import 'package:cashcover/presentation/select_ticket_one_screen/select_ticket_one_screen.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomemoreservicebottomsheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: getVerticalSize(
                5.00,
              ),
              width: getHorizontalSize(
                56.00,
              ),
              margin: getMargin(
                left: 24,
                top: 16,
                right: 24,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.bluegray51,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    2.50,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 24,
                right: 24,
              ),
              child: Text(
                "More Services",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstant.gray900,
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
          FadeInLeft(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  top: 13.0,
                  bottom: 13.0,
                  left: 30,
                  right: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PulseNominal1Screen()),
                        );
                      },
                      child: Container(
                        width: getHorizontalSize(56),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 56,
                              width: 56,
                              alignment: Alignment.center,
                              child: CommonImageView(
                                svgPath: ImageConstant.imgGroup25,
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
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
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
                    ),
                    Container(
                      margin: getMargin(
                        left: 0,
                      ),
                      width: getHorizontalSize(56),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 56,
                            width: 56,
                            alignment: Alignment.center,
                            child: CommonImageView(
                              svgPath: ImageConstant.imgGroup2556X56,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 0,
                              top: 8,
                              right: 0,
                            ),
                            child: Text(
                              "Internet",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    Container(
                      margin: getMargin(
                        left: 0,
                      ),
                      //  width: getHorizontalSize(62),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 56,
                            width: 56,
                            margin: getMargin(
                              left: 0,
                              right: 0,
                            ),
                            alignment: Alignment.center,
                            child: CommonImageView(
                              svgPath: ImageConstant.imgGroup251,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 8,
                              ),
                              child: Text(
                                "Call Package",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    12,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w400,
                                  height: 1.33,
                                ),
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
                      width: getHorizontalSize(56),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 56,
                            width: 56,
                            alignment: Alignment.center,
                            child: CommonImageView(
                              svgPath: ImageConstant.imgGroup252,
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
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
            ),
          ),
          FadeInLeft(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  top: 13.0,
                  bottom: 13.0,
                  left: 30,
                  right: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: getHorizontalSize(56),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: ColorConstant.gray100,
                              shape: BoxShape.circle,
                            ),
                            child: CustomIconButton(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              child: CommonImageView(
                                svgPath: ImageConstant.electricity,
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
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    Container(
                      width: getHorizontalSize(56),
                      margin: getMargin(
                        left: 0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorConstant.gray100,
                                shape: BoxShape.circle,
                              ),
                              child: CustomIconButton(
                                height: 56,
                                width: 56,
                                alignment: Alignment.center,
                                child: CommonImageView(
                                  svgPath: ImageConstant.insurance,
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
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    Container(
                      margin: getMargin(
                        left: 0,
                      ),
                      width: getHorizontalSize(56),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: ColorConstant.gray100,
                              shape: BoxShape.circle,
                            ),
                            child: CustomIconButton(
                              height: 56,
                              width: 56,
                              margin: getMargin(
                                left: 0,
                                right: 0,
                              ),
                              alignment: Alignment.center,
                              child: CommonImageView(
                                svgPath: ImageConstant.game,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 8,
                              ),
                              child: Text(
                                "Game",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    12,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w400,
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
                              builder: (context) => SelectTicketOneScreen()),
                        );
                      },
                      child: Container(
                        margin: getMargin(
                          left: 0,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: ColorConstant.gray100,
                                shape: BoxShape.circle,
                              ),
                              child: CustomIconButton(
                                height: 56,
                                width: 56,
                                alignment: Alignment.center,
                                child: CommonImageView(
                                  svgPath: ImageConstant.wifi,
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
                                "Telkom",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          FadeInLeft(
            child: Padding(
              padding: getPadding(
                left: 30,
                right: 30,
                bottom: 68,
                top: 26,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 56,
                          width: 56,
                          alignment: Alignment.centerLeft,
                          child: CommonImageView(
                            svgPath: ImageConstant.imgGroup257,
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
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
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
                  Container(
                    margin: getMargin(
                      left: 34,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 56,
                          width: 56,
                          child: CommonImageView(
                            svgPath: ImageConstant.imgGroup25Gray90056X56,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 2,
                              top: 8,
                              right: 3,
                            ),
                            child: Text(
                              "Television",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.gray900,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
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
        ],
      ),
    );
  }
}
