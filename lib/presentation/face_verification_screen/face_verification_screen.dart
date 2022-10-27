import 'package:camera/camera.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/camera_page/camera_page.dart';
import 'package:cashcover/widgets/custom_button.dart';

class FaceVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.gray900,
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 27,
                      top: 20,
                      right: 27,
                    ),
                    child: CommonImageView(
                      isBackBtn: true,
                      isRtl: isRtl,
                      svgPath: ImageConstant.imgVectorWhiteA70015X7,
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
                      left: 24,
                      top: 36,
                      right: 24,
                    ),
                    child: Text(
                      "Face ID Verification",
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        328.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 8,
                        right: 20,
                      ),
                      child: Text(
                        "Unlock Paypay with your face ID, quick and secured ",
                        maxLines: null,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.bluegray300,
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
                    child: Container(
                      height: getSize(
                        300.00,
                      ),
                      width: getSize(
                        300.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 58,
                        right: 20,
                      ),
                      child: DottedBorder(
                        color: ColorConstant.whiteA700,
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            2.00,
                          ),
                          top: getVerticalSize(
                            2.00,
                          ),
                          right: getHorizontalSize(
                            2.00,
                          ),
                          bottom: getVerticalSize(
                            2.00,
                          ),
                        ),
                        strokeWidth: getHorizontalSize(
                          2.00,
                        ),
                        radius: Radius.circular(
                          150,
                        ),
                        borderType: BorderType.RRect,
                        dashPattern: [
                          10,
                          10,
                        ],
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              all: 40,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgGroupWhiteA700,
                              height: getSize(
                                118.00,
                              ),
                              width: getSize(
                                118.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 335,
                    text: "Scan My Face",
                    margin: getMargin(
                      left: 20,
                      top: 172,
                      right: 20,
                      bottom: 20,
                    ),
                    onTap: ()async{
                      await availableCameras().then((value) => 
                      Navigator.push(context, MaterialPageRoute(builder: 
                      (context)=>CameraPage(cameras:value))));

                    },
                    variant: ButtonVariant.FillWhiteA700,
                    fontStyle: ButtonFontStyle.UrbanistBold14Gray900,
                    alignment: Alignment.center,
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
