import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/home.dart';
import 'package:cashcover/widgets/custom_button.dart';

class SuccessChangedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray900,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                
                children: [
                  Container(
                    height: getSize(
                      124.00,
                    ),
                    width: getSize(
                      124.00,
                    ),
                    margin: getMargin(
                      left: 20,
                      top: 140,
                      right: 20,
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: ColorConstant.whiteA70063,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            62.00,
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 40,
                                top: 40,
                                right: 38,
                                bottom: 40,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgVectorWhiteA70026X40,
                                height: getVerticalSize(
                                  30.00,
                                ),
                                width: getHorizontalSize(
                                  45.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 40,
                      right: 20,
                    ),
                    child: Text(
                      "Password Changed",
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
                  Container(
                    width: getHorizontalSize(
                      311.00,
                    ),
                    margin: getMargin(
                      left: 20,
                      top: 8,
                      right: 20,
                    ),
                    child: Text(
                      "Password changed successfully, you can login again with a new password",
                      maxLines: null,
                      textAlign: TextAlign.center,
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
                ],
              ),
            ),
          
          
          
            CustomButton(
              width: 335,
              text: "Sign In Now",
              margin: getMargin(
                left: 20,
                top: 0,
                right: 20,
                bottom: 20,
              ),
              onTap: (){
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    Home()), (Route<dynamic> route) => false);
              },
              variant: ButtonVariant.FillWhiteA700,
              fontStyle: ButtonFontStyle.UrbanistBold14Gray900,
            ),
          ],
        ),
      ),
    );
  }
}
