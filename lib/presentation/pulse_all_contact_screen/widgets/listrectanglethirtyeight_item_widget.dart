import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class ListrectanglethirtyeightItemWidget extends StatelessWidget {
  ListrectanglethirtyeightItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 0.0,
        bottom: 18.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              top: 2,
              bottom: 4,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  21.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgRectangle38,
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
              left: 17,
              right: 17,
              bottom: 3,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      right: 3,
                    ),
                    child: Text(
                      "Arlene McCoy",
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
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Text(
                    "(629) 555-0129",
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
    );
  }
}
