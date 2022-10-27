import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cashcover/core/app_export.dart';

class ChangeLanguageScreen extends StatefulWidget {
  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: size.width,
            margin: getMargin(
              left: 20,
              top: 35,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Change Language",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.gray900,
                    fontSize: getFontSize(
                      20,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                    height: 1.40,
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: getPadding(
                      top: 4,
                      bottom: 3,
                    ),
                    child: Text(
                      "Done",
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
              ],
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                327.00,
              ),
              margin: getMargin(
                left: 24,
                top: 21,
                bottom: 10,
                right: 24,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray105,
              ),
            ),
            InkWell(
              onTap: () async {
                setState(() async {
                  await context.setLocale(Locale("en"));
                });
              },
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 14,
                  bottom: 14,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgCalculator,
                            height: getVerticalSize(
                              16.00,
                            ),
                            width: getHorizontalSize(
                              24.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(left: 14, right: 14),
                          child: Text(
                            "English (US)",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.bluegray902,
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
                    Padding(
                      padding: getPadding(
                        top: 5,
                        bottom: 4,
                      ),
                      child:isRtl? SvgPicture.asset(
                         ImageConstant.imgVectorAmberA700,
                        color: Colors.transparent,
                        height: getVerticalSize(
                          8.00,
                        ),
                        width: getHorizontalSize(
                          12.00,
                        ),
                      ): SvgPicture.asset(
                         ImageConstant.imgVectorAmberA700,
                        
                        height: getVerticalSize(
                          8.00,
                        ),
                        width: getHorizontalSize(
                          12.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                327.00,
              ),
              margin: getMargin(
                left: 24,
                top: 14,
                bottom: 10,
                right: 24,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray105,
              ),
            ),
            InkWell(
               onTap: () async {
                        setState(() async {
                         
                          await context.setLocale(Locale("ar"));
                        });
                      },
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 14,
                  bottom: 14,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.egypt,
                            height: getVerticalSize(
                              16.00,
                            ),
                            width: getHorizontalSize(
                              24.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(left: 14, right: 14),
                          child: Text(
                            "العربية",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.bluegray902,
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
                    Padding(
                      padding: getPadding(
                        top: 5,
                        bottom: 4,
                      ),
                      child:isRtl? SvgPicture.asset(
                         ImageConstant.imgVectorAmberA700,
                        height: getVerticalSize(
                          8.00,
                        ),
                        width: getHorizontalSize(
                          12.00,
                        ),
                      ): SvgPicture.asset(
                         ImageConstant.imgVectorAmberA700,
                         color: Colors.transparent,
                        height: getVerticalSize(
                          8.00,
                        ),
                        width: getHorizontalSize(
                          12.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                327.00,
              ),
              margin: getMargin(
                left: 24,
                top: 14,
                bottom: 10,
                right: 24,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray105,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
