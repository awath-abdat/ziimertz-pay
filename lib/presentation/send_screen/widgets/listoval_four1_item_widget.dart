import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class ListovalFour1ItemWidget extends StatelessWidget {
  ListovalFour1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 10.0,
        right: 15,
        bottom: 10.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                21.00,
              ),
            ),
            child: CommonImageView(
              imagePath: ImageConstant.imgOval15,
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
              top: 3,
              bottom: 1,
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
                    "Marvin McKinney",
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
                    "willie.jennings@gmail.com",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorConstant.bluegray402,
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
    );



  }
}
