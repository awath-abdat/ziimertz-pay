import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class ListcheckmarkItemWidget extends StatelessWidget {
  ListcheckmarkItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: getPadding(
          top: 16.0,
          right: 13,
          bottom: 16.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                top: 11,
                bottom: 7,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgCheckmark,
                height: getSize(
                  24.00,
                ),
                width: getSize(
                  24.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    21.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgBase2,
                  height: getSize(
                    42.00,
                  ),
                  width: getSize(
                    42.00,
                  ),
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 16,
                top: 2,
                right: 1,
                bottom: 2,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Jenny Wilson",
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
      ),
    );
  }
}
