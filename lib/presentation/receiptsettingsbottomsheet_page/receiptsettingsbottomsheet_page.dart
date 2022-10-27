import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';
import 'package:cashcover/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class ReceiptsettingsbottomsheetPage extends StatefulWidget {
  @override
  State<ReceiptsettingsbottomsheetPage> createState() => _ReceiptsettingsbottomsheetPageState();
}

class _ReceiptsettingsbottomsheetPageState extends State<ReceiptsettingsbottomsheetPage> {
  bool switchVal=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: getMargin(
        top: 0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: getVerticalSize(
                5.00,
              ),
              width: getHorizontalSize(
                56.00,
              ),
              margin: getMargin(
                left: 20,
                top: 16,
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
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 24,
              right: 20,
            ),
            child: Text(
              "Settings",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
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
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 20,
                top: 22,
                right: 20,
                bottom: 56,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomIconButton(
                        height: 55,
                        width: 55,
                        margin: getMargin(
                          bottom: 1,
                        ),
                        shape: IconButtonShape.CircleBorder21,
                        child: CommonImageView(
                          imagePath: ImageConstant.printer,
                        ),
                      ),
                    
                  
                  
                    // Container(
                    //   height: getVerticalSize(48),
                    //   width: getHorizontalSize(48),
                    //   decoration: BoxDecoration(
                    //     color: ColorConstant.bluegray51,
                    //     shape: BoxShape.circle,
                        
                    //   ),
                    //   child: Icon(Icons.print),
                    // ),
                    
                      Container(
                        margin: getMargin(
                          left: 20,
                          right: 20
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Print Automatic",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
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
                            Padding(
                              padding: getPadding(
                                top: 3,
                                right: 10,
                              ),
                              child: Text(
                                "EPSON 5510",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  CustomSwitch(
                    padding: getPadding(
                      top: 11,
                      bottom: 12,
                    ),
                    value: switchVal,
                    onChanged: (value) {
                      // setState(() {
                      //   switchVal=value;
                      // });


                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
