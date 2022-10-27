import 'package:easy_localization/easy_localization.dart';
import 'package:cashcover/presentation/forgot_password_with_email_screen/forgot_password_with_email_screen.dart';
import 'package:cashcover/presentation/forgot_password_with_phone_screen/forgot_password_with_phone_screen.dart';
import '../../widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 27,
                      top: 20,
                      right: 27,
                    ),
                    child: CommonImageView(
                      isRtl: isRtl,
                      isBackBtn: true,
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
                      left: 24,
                      top: 36,
                      right: 24,
                    ),
                    child: Text(
                      "Forgot Password",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray905,
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
                        327.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 8,
                        right: 20,
                      ),
                      child: Text(
                        "Select verification method and we will send verification code",
                        maxLines: null,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.bluegray401,
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
                  InkWell(
                    onTap: (){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>ForgotPasswordWithEmailScreen()),
  );
                    },
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 30,
                        right: 20,
                        bottom: 0,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            top: 8.0,
                            bottom: 8.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                4.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.bluegray54,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomIconButton(
                                height: 40,
                                width: 40,
                                margin: getMargin(
                                  left: 16,
                                  top: 16,
                                  bottom: 16,
                                ),
                                shape: IconButtonShape.RoundedBorder2,
                                padding: IconButtonPadding.PaddingAll10,
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgFrame14,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 16,
                                  top: 14,
                                  right: 16,
                                  bottom: 14,
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
                      "Email",
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
                      top: 4,
                    ),
                    child: Text(
                      "********@mail.com",
                      overflow: TextOverflow.ellipsis,
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
               
                  InkWell(
                    onTap: (){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>ForgotPasswordWithPhoneScreen()),
  );
                    },
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 30,
                        right: 20,
                        bottom: 0,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            top: 8.0,
                            bottom: 8.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                4.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.bluegray54,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomIconButton(
                                height: 45,
                                width: 45,
                                margin: getMargin(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                shape: IconButtonShape.RoundedBorder2,
                                padding: IconButtonPadding.PaddingAll4,
                                child: CommonImageView(
                                  imagePath: ImageConstant.phone,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 16,
                                  top: 14,
                                  right: 10,
                                  bottom: 14,
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
                      "Phone Number",
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
                      top: 4,
                    ),
                    child: Text(
                      "**** **** **** 2345",
                      overflow: TextOverflow.ellipsis,
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
               
               
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
