import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/success_changed_screen/success_changed_screen.dart';
import 'package:cashcover/widgets/custom_button.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  bool obscure1=true;
  bool obscure2=true;

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
                      isRtl:isRtl ,
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
                      "New Password",
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
                        "Create a new password that is safe and easy to remember",
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
                              
                              obscureText: obscure1,
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
                                labelText: "New password",
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
                                        obscure1 = !obscure1;
                                      });
                                    },
                                    child: Container(
                                      height: getSize(
                                        20.17,
                                      ),
                                      width: getSize(
                                        22.67,
                                      ),
                                      child: obscure1
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
                            padding: getPadding(
                              right: 20,
                              left: 20,
                              top: 16,
                            ),
                            child: TextFormField(
                              
                              obscureText: obscure2,
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
                                labelText: "Confirm New password",
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
                                        obscure2 = !obscure2;
                                      });
                                    },
                                    child: Container(
                                      height: getSize(
                                        20.17,
                                      ),
                                      width: getSize(
                                        22.67,
                                      ),
                                      child: obscure2
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
                ],
              ),
            ),
                   
         
         
            InkWell(
              onTap: (){
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SuccessChangedScreen()),
  );
              },
              child: CustomButton(
                width: 335,
                text: "Confirm New Password",
                margin: getMargin(
                  left: 20,
                  top: 20,
                  right: 20,
                  bottom: 20,
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
