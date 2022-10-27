import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListovalTwo2ItemWidget extends StatelessWidget {
  ListovalTwo2ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 10.0,
          bottom: 10.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      21.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgBase,
                    height: getSize(
                      42.00,
                    ),
                    width: getSize(
                      42.00,
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 16,
                    top: 2,
                    bottom: 2,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Kristin Watson",
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
                          top: 4,
                          right: 7,
                        ),
                        child: Text(
                          "ID38924U98323",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray401,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w400,
                            height: 1.33,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomButton(
              width: 83,
              text: "18 Customer",
              margin: getMargin(
                left: 106,
                top: 7,
                bottom: 7,
              ),
              variant: ButtonVariant.FillGray100,
              padding: ButtonPadding.PaddingAll6,
              fontStyle: ButtonFontStyle.UrbanistRegular12,
            ),
          ],
        ),
      ),
    );
  }
}
