import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListgrouptwentyfiveThreeItemWidget extends StatelessWidget {
  ListgrouptwentyfiveThreeItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 8.0,
        bottom: 8.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomIconButton(
                height: 56,
                width: 56,
                child: CommonImageView(
                  svgPath: ImageConstant.imgGroup25Gray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 14,
                  right: 14,
                  top: 20,
                  bottom: 20,
                ),
                child: Text(
                  "Electricity",
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
          Container(
            height: getSize(
              20.00,
            ),
            width: getSize(
              20.00,
            ),
            margin: getMargin(
              left: 193,
              top: 18,
              bottom: 18,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.whiteA700,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  2.00,
                ),
              ),
              border: Border.all(
                color: ColorConstant.bluegray401,
                width: getHorizontalSize(
                  1.50,
                ),
              ),
            ),
          ),
      
        ],
      ),
    );
  }
}
