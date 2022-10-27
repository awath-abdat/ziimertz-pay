import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListframefourteenItemWidget extends StatelessWidget {
  ListframefourteenItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              4.00,
            ),
          ),
          border: Border.all(
            color: ColorConstant.bluegray54,
            width: getHorizontalSize(
              1.00,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomIconButton(
              height: 40,
              width: 40,
              margin: getMargin(
                left: 16,
                top: 16,
                bottom: 16,
              ),
              shape: IconButtonShape.RoundedBorder2,
              padding: IconButtonPadding.PaddingAll10,
              child: CommonImageView(
                svgPath: ImageConstant.imgFrame14,
              ),
            ),
            Container(
              margin: getMargin(
                left: 16,
                top: 14,
                right: 155,
                bottom: 14,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 10,
                    ),
                    child: Text(
                      "Email",
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
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Text(
                      "********@mail.com",
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
      ),
    );
  }
}
