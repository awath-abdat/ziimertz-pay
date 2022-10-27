import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/successfuly_screen/successfuly_screen.dart';
import 'package:cashcover/widgets/custom_button.dart';

class SetPinScreen extends StatelessWidget {
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
                      "Add 4-digits Pin",
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
                        "Add a pin number to make your wallet more secure",
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
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 46,
                        right: 20,
                      ),
                      child: Container(
                        width: getHorizontalSize(
                          256.00,
                        ),
                        height: getVerticalSize(
                          52.00,
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
                            color: ColorConstant.whiteA700,
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
                                2.00,
                              ),
                            ),
                            selectedFillColor: ColorConstant.whiteA70019,
                            activeFillColor: ColorConstant.whiteA70019,
                            inactiveFillColor: ColorConstant.whiteA70019,
                            inactiveColor: ColorConstant.fromHex("#1212121D"),
                            selectedColor: ColorConstant.fromHex("#1212121D"),
                            activeColor: ColorConstant.fromHex("#1212121D"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 335,
                    text: "Confirm Your Pin",
                    margin: getMargin(
                      left: 20,
                      top: 102,
                      right: 20,
                      bottom: 20,
                    ),
                    onTap: (){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SuccessfulyScreen()),
  );
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
