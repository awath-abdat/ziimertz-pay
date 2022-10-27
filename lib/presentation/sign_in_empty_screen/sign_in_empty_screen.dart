import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:cashcover/presentation/home.dart';
import 'package:cashcover/presentation/sign_up_empty_screen/sign_up_empty_screen.dart';
import 'package:cashcover/widgets/custom_button.dart';

class SignInEmptyScreen extends StatefulWidget {
  @override
  State<SignInEmptyScreen> createState() => _SignInEmptyScreenState();
}

class _SignInEmptyScreenState extends State<SignInEmptyScreen> {
  bool obscure=true;

  @override
  Widget build(BuildContext context) {
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
                      left: 24,
                      top: 72,
                      right: 24,
                    ),
                    child: Text(
                      "Welcome Back!",
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
                      "Sign In to your account",
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
                        top: 18,
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
                              top: 11,
                              bottom: 8,
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
                              top: 11,
                              bottom: 8,
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
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)
                     =>ForgotPasswordScreen()),
                      );
                            },
                            child: Padding(
                              padding: getPadding(
                                left: 16,
                                top: 15,
                                bottom: 15,
                                right: 16,
                              ),
                              child: Text(
                                "Forgot Password?",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
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
                                      ),
                                      CustomButton(
                          width: 335,
                          text: "Sign In",
                          margin: getMargin(
                            left: 16,
                            top: 50,
                            right: 16,
                          ),
                          alignment: Alignment.center,
                          onTap: (){
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                        Home()), (Route<dynamic> route) => false);
                          },
                                      ),
                                      Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              left: 16,
                              top: 27,
                              right: 16,
                              bottom: 20,
                            ),
                            child: InkWell(
                               onTap: (){
                              Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)
                     =>SignUpEmptyScreen()),
                      );
                            },
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Don’t have account? ',
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
                                      text: 'Sign Up',
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
