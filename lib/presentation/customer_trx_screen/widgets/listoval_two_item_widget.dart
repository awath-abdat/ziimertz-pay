import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class ListovalTwoItemWidget extends StatelessWidget {
  ListovalTwoItemWidget();

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    imagePath: ImageConstant.imgOval1,
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
                    right: 16,
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
                          right: 10,
                        ),
                        child: Text(
                          "082332849001",
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
            Padding(
              padding: getPadding(
                left: 0,
                top: 12,
                bottom: 14,
              ),
              child: Text(
                "July, 2 2022",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: ColorConstant.gray900,
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
    );
  }
}
