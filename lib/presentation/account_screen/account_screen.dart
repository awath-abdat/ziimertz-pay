import 'package:animate_do/animate_do.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';

class AccountScreen extends StatefulWidget {
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool obscure = true;

  String dialCode = "+20";
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                top: 16,
                bottom: 17,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        left: 27,
                        top: 16,
                        right: 27,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 5,
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
                              left: 0,
                            ),
                            child: Text(
                              "My Account",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  20,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                                height: 1.40,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: getHorizontalSize(7),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        top: 23,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: size.width,
                            decoration: BoxDecoration(
                              color: ColorConstant.gray104,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 23,
                              right: 20,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  50.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgBase80X80,
                                height: getSize(
                                  100.00,
                                ),
                                width: getSize(
                                  100.00,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 16,
                              right: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgCamera16X16,
                                    height: getSize(
                                      16.00,
                                    ),
                                    width: getSize(
                                      16.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    right: 8
                                  ),
                                  child: Text(
                                    "Change Picture",
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
                              ],
                            ),
                          ),
                          FadeInDown(
                            child: Column(
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: size.width,
                                  margin: getMargin(
                                    top: 38,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray104,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    right: 20,
                                    left: 20,
                                    top: 16,
                                  ),
                                  child: TextFormField(
                                    initialValue: "bebyjovanca",
                                    // keyboardType: TextInputType.number,
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
                                      labelText: "Type your name",
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
                                          svgPath: ImageConstant.imgUser20X20,
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
                                                   
                                                   
                                                   
                                Padding(
                                  padding: getPadding(
                                    right: 20,
                                    left: 20,
                                    top: 16,
                                  ),
                                  child: TextFormField(
                                    initialValue: "123456789",
                                    obscureText: obscure,
                                    // keyboardType: TextInputType.number,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700,
                                    ),
                                    decoration: InputDecoration(
                                      // contentPadding: getPadding(
                                      //   left: 24,
                                      //   right: 24
                                      // ),
                                      labelText: "Type your password",
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
                                          svgPath: ImageConstant.imgLock,
                                          height: getSize(
                                            20.00,
                                          ),
                                          width: getSize(
                                            20.00,
                                          ),
                                        ),
                                      ),
                          
                                      suffixIcon: Container(
                                        margin: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20.00,
                                          ),
                                          right: getHorizontalSize(
                                            21.66,
                                          ),
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              obscure = !obscure;
                                            });
                                          },
                                          child: Container(
                                            height: getSize(
                                              20.17,
                                            ),
                                            width: getSize(
                                              22.67,
                                            ),
                                            child: obscure
                                                ? SvgPicture.asset(
                                                    ImageConstant.visibilityOff,
                                                    // color: ColorConstant.gray500,
                                                  )
                                                : SvgPicture.asset(
                                                    ImageConstant.visibilityOn,
                          
                                                    // color: ColorConstant.gray500,
                                                  ),
                                          ),
                                        ),
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
                                            initialValue: "0102332877994",
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
                                              color: ColorConstant.gray900,
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
                                    top: 0,
                                    right: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.bluegray51,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          
                          CustomButton(
                            width: 335,
                            text: "Save Changes",
                            margin: getMargin(
                              left: 20,
                              top: 100,
                              right: 20,
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                            variant: ButtonVariant.FillGray901,
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
    );
  }
}
