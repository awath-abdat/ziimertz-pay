import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/sign_in_empty_screen/sign_in_empty_screen.dart';
import 'package:cashcover/presentation/sign_up_verify_code_email_screen/sign_up_verify_code_email_screen.dart';
import 'package:cashcover/widgets/custom_button.dart';

class SignUpEmptyScreen extends StatefulWidget {
  @override
  State<SignUpEmptyScreen> createState() => _SignUpEmptyScreenState();
}

class _SignUpEmptyScreenState extends State<SignUpEmptyScreen> {
   bool checkboxVal=false;
   
     bool obscure=true;
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
                mainAxisAlignment: MainAxisAlignment.center,
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
                      "Sign Up",
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
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 8,
                      right: 24,
                    ),
                    child: Text(
                      "Create account and enjoy all services",
                      overflow: TextOverflow.ellipsis,
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 20,
                        top: 29,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            4.00,
                          ),
                        ),
                        border: Border.all(
                          color: ColorConstant.bluegray51,
                          width: getHorizontalSize(
                            1.00,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 16,
                              bottom: 12,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgGoogle1,
                              height: getSize(
                                20.00,
                              ),
                              width: getSize(
                                20.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              right: 20,
                              top: 16,
                              bottom: 15,
                            ),
                            child: Text(
                              "Sign in with Google",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.bluegray800,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 17,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              143.00,
                            ),
                            margin: getMargin(
                              top: 12,
                              bottom: 7,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray51,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: Text(
                              "OR",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.bluegray401,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                                height: 1.25,
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              143.00,
                            ),
                            margin: getMargin(
                              left: 10,
                              top: 12,
                              bottom: 7,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray51,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FadeInDown(
                    child: Column(
                      children: [
                        Padding(
                                    padding: getPadding(
                                      right: 20,
                                      left: 20,
                                      top: 16,
                                    ),
                                    child: TextFormField(
                                     
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
                                 
                                   
                                   
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 20,
                              top: 20,
                              right: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                               Checkbox(
                                                  activeColor: ColorConstant.black900,
                                                  side: BorderSide(color: ColorConstant.bluegray401),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: ColorConstant.black900,
                                                      width: getHorizontalSize(
                                                        3.00,
                                                      ),
                                                    ),
                                                    borderRadius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                        2.00,
                                                      ),
                                                    ),
                                                  ),
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize.shrinkWrap,
                                                  value: checkboxVal,
                                                  onChanged: (value) {
                                                    setState(() {
                                            checkboxVal = !checkboxVal;
                                          });
                                                  },
                                                ),
                                             
                                
                                Container(
                                  width: getHorizontalSize(
                                    280.00,
                                  ),
                                  margin: getMargin(
                                    left: 0,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'I agree to the company ',
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
                                        TextSpan(
                                          text: 'Term of Service',
                                          style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w400,
                                            height: 1.57,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' and ',
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
                                        TextSpan(
                                          text: 'Privacy Policy',
                                          style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w400,
                                            height: 1.57,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                                   
                                   
                                   
                        CustomButton(
                          width: 335,
                          text: "Sign Up",
                          margin: getMargin(
                            left: 20,
                            top: 42,
                            right: 20,
                          ),
                          onTap: (){
                            Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)
                   =>SignUpVerifyCodeEmailScreen()),
                    );
                          },
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              left: 20,
                              top: 58,
                              right: 20,
                              bottom: 20,
                            ),
                            child: InkWell(
                                onTap: (){
                              Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context)
                   =>SignInEmptyScreen()),
                    );
                            },
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'H',
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
                                    TextSpan(
                                      text: 'ave ',
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
                                    TextSpan(
                                      text: 'an ',
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
                                    TextSpan(
                                      text: 'account? ',
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
                                    TextSpan(
                                      text: 'Sign In',
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
                                  ],
                                ),
                                textAlign: TextAlign.center,
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
        ),
      ),
    );
  }
}
