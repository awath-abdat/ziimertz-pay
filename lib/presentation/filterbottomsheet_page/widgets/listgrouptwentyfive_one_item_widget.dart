import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListgrouptwentyfiveOneItemWidget extends StatelessWidget {
  ListgrouptwentyfiveOneItemWidget();

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
                  svgPath: ImageConstant.imgGroup2556X56,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 14,
                  top: 20,
                  bottom: 20,
                ),
                child: Text(
                  "Internet",
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
          Padding(
            padding: getPadding(
              left: 199,
              top: 16,
              bottom: 16,
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
        ],
      ),
    );
 
 
 
  }
}
