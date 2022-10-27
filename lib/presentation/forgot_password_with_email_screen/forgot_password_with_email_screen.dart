import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';

import '../fill_otp_code_screen/fill_otp_code_screen.dart';

class ForgotPasswordWithEmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      "Reset Password",
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
                        "Enter your email, we will send a verification code to email",
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
                  Padding(
                            padding: getPadding(
                              right: 20,
                              left: 20,
                              top: 16,
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              initialValue: "bebyjovanca@gmail.com",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.gray900,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: InputDecoration(
                                // contentPadding: getPadding(
                                //   left: 24,
                                //   right: 24
                                // ),
                                labelText: "Type your email",
                                labelStyle: TextStyle(
                                  color: ColorConstant.bluegray401,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w400,
                                ),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorConstant.bluegray51)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorConstant.bluegray51)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: ColorConstant.black900,
                                )),
                                prefixIconConstraints:
                                    BoxConstraints(minHeight: 18, minWidth: 18),
                                prefixIcon: Padding(
                                  padding: getPadding(
                                      top: 15, bottom: 9, right: 16, left: 16),
                                  child: CommonImageView(
                                    imagePath: ImageConstant.mail,
                                    height: getSize(
                                      20.00,
                                    ),
                                    width: getSize(
                                      20.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                ],
              ),
            ),
                   
           
            CustomButton(
              width: 335,
              text: "Send Link",
              margin: getMargin(
                left: 20,
                top: 0,
                right: 20,
                bottom: 20,
              ),
               onTap: (){
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>FillOtpCodeScreen()),
  );
              },
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
