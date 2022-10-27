import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class WithdrawOtpBottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        5.00,
                      ),
                      width: getHorizontalSize(
                        56.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 12,
                        right: 20,
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 20,
                          top: 24,
                          right: 20,
                        ),
                        child: Text(
                          "Verification",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              24,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: getHorizontalSize(
                          321.00,
                        ),
                        margin: getMargin(
                          left: 20,
                          top: 12,
                          right: 20,
                        ),
                        child: Text(
                          "Enter the 4-digits code to process your withdraw",
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
                        left: 20,
                        top: 36,
                        right: 20,
                      ),
                      child: Container(
                        width: getHorizontalSize(
                          256.00,
                        ),
                        height: getVerticalSize(
                          60.00,
                        ),
                        child: PinCodeTextField(
                          appContext: context,
                          length: 4,
                          obscureText: false,
                          obscuringCharacter: '*',
                          keyboardType: TextInputType.number,
                          autoDismissKeyboard: true,
                          enableActiveFill: true,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onChanged: (value) {},
                          textStyle: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              24,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                          ),
                          pinTheme: PinTheme(
                            fieldHeight: getHorizontalSize(
                              52.00,
                            ),
                            fieldWidth: getHorizontalSize(
                              52.00,
                            ),
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                4.00,
                              ),
                            ),
                            selectedFillColor: ColorConstant.whiteA700,
                            activeFillColor: ColorConstant.whiteA700,
                            inactiveFillColor: ColorConstant.whiteA700,
                            inactiveColor: ColorConstant.bluegray51,
                            selectedColor: ColorConstant.black900,
                            activeColor: ColorConstant.bluegray51,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 20,
                          top: 24,
                          right: 20,
                        ),
                        child: Text(
                          "Didn’t receive the code?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.bluegray300,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w400,
                            height: 1.57,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 20,
                          top: 4,
                          right: 20,
                        ),
                        child: Text(
                          "Resend Code",
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
                    CustomButton(
                      width: 335,
                      text: "Verify Withdraw",
                      margin: getMargin(
                        left: 20,
                        top: 32,
                        right: 20,
                        bottom: 20,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  
  
  
  }
}
