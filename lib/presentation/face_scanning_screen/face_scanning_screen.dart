import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

class FaceScanningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueA200,
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: getVerticalSize(
                    1161.00,
                  ),
                  width: size.width,
                  decoration: BoxDecoration(
                    color: ColorConstant.blueA200,
                  ),
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
                            imagePath: ImageConstant.imgImage5,
                            height: getVerticalSize(
                              768.00,
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
                            100.00,
                          ),
                          width: getHorizontalSize(
                            327.00,
                          ),
                          margin: getMargin(
                            left: 24,
                            top: 220,
                            right: 24,
                            bottom: 220,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(
                                getHorizontalSize(
                                  8.00,
                                ),
                              ),
                              bottomRight: Radius.circular(
                                getHorizontalSize(
                                  8.00,
                                ),
                              ),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(
                                0.4999998933076817,
                                1.5227123421279865e-9,
                              ),
                              end: Alignment(
                                0.4999998933076844,
                                0.8950000367311775,
                              ),
                              colors: [
                                ColorConstant.whiteA70066,
                                ColorConstant.whiteA70000,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: getVerticalSize(
                            400.00,
                          ),
                          width: getHorizontalSize(
                            327.00,
                          ),
                          margin: getMargin(
                            left: 24,
                            top: 56,
                            right: 24,
                            bottom: 56,
                          ),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: ColorConstant.whiteA700Cc,
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  8.00,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: CommonImageView(
                                    svgPath: ImageConstant.img,
                                    height: getVerticalSize(
                                      400.00,
                                    ),
                                    width: getHorizontalSize(
                                      327.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: getMargin(
                            top: 365,
                            bottom: 365,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(
                                0.5,
                                -3.0616171314629196e-17,
                              ),
                              end: Alignment(
                                0.5,
                                0.9999999999999999,
                              ),
                              colors: [
                                ColorConstant.black900,
                                ColorConstant.black90000,
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 57,
                                  top: 167,
                                  right: 57,
                                ),
                                child: Text(
                                  "Center your face",
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
                              Container(
                                width: getHorizontalSize(
                                  260.00,
                                ),
                                margin: getMargin(
                                  left: 57,
                                  top: 8,
                                  right: 57,
                                ),
                                child: Text(
                                  "point your face right at the box, then take a photo",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
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
                                  left: 57,
                                  top: 24,
                                  right: 57,
                                  bottom: 48,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomIconButton(
                                      height: 56,
                                      width: 56,
                                      margin: getMargin(
                                        top: 12,
                                        bottom: 12,
                                      ),
                                      variant:
                                          IconButtonVariant.FillWhiteA70066,
                                      padding: IconButtonPadding.PaddingAll20,
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgButton,
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 80,
                                      width: 80,
                                      margin: getMargin(
                                        left: 24,
                                      ),
                                      variant: IconButtonVariant.FillWhiteA700,
                                      shape: IconButtonShape.CircleBorder40,
                                      padding: IconButtonPadding.PaddingAll29,
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgButtonGray900,
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 56,
                                      width: 56,
                                      margin: getMargin(
                                        left: 24,
                                        top: 12,
                                        bottom: 12,
                                      ),
                                      variant:
                                          IconButtonVariant.FillWhiteA70066,
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgButton56X56,
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
    );
  }
}
