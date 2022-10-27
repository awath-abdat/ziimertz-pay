import 'package:country_list_pick/country_list_pick.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/sign_up_verify_code_phone_number_screen/sign_up_verify_code_phone_number_screen.dart';
import 'package:cashcover/widgets/custom_button.dart';

class SignUpSetUpScreen extends StatefulWidget {
  @override
  State<SignUpSetUpScreen> createState() => _SignUpSetUpScreenState();
}

class _SignUpSetUpScreenState extends State<SignUpSetUpScreen> {
  String dialCode = "+20";
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
                      "Set Up 2-Step Verification",
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
                        "Enter your phone number, we will send a authentication code",
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
                            padding: getPadding(left: 16, right: 16, top: 30),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CountryListPick(
                                  theme: CountryTheme(
                                    isShowFlag: true,
                                    isShowTitle: false,
                                    isShowCode: false,
                                    isDownIcon: false,
                                    showEnglishName: false,
                                    labelColor: Colors.black,
                                  ),
                                  initialSelection: dialCode,
      
                                  // or
                                  // initialSelection: 'US'
                                  onChanged: (code) {
                                    setState(() {
                                      if (code!.dialCode != null) {
                                        dialCode = code.dialCode!;
                                      } else
                                        print("dialCode is null");
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Container(
                                    width: getHorizontalSize(170),
                                    child: TextFormField(
                                    
                                      cursorColor: ColorConstant.gray900,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Your Phone Number ',
                                        labelStyle: TextStyle(
                                          color: ColorConstant.bluegray401,
                                          fontSize: getFontSize(
                                            14.0,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                12.00,
                                              ),
                                            ),
                                            borderSide: BorderSide.none),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                12.00,
                                              ),
                                            ),
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                12.00,
                                              ),
                                            ),
                                            borderSide: BorderSide.none),
                                        isDense: true,
                                        contentPadding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            0.00,
                                          ),
                                          right: getHorizontalSize(
                                            0.00,
                                          ),
                                          top: getVerticalSize(
                                            21.20,
                                          ),
                                          bottom: getVerticalSize(
                                            19.20,
                                          ),
                                        ),
                                      ),
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
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
                      335.00,
                    ),
                    margin: getMargin(
                      left: 20,
                      top: 5,
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray5090,
                    ),
                  ),
                  CustomButton(
                    width: 335,
                    text: "Continue",
                    margin: getMargin(
                      left: 20,
                      top: 109,
                      right: 20,
                      bottom: 20,
                    ),
                    onTap: (){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SignUpVerifyCodePhoneNumberScreen()),
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
