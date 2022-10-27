import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class ListjanItemWidget extends StatelessWidget {
  ListjanItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 3,
        top: 12.5,
        right: 1,
        bottom: 12.5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Jan",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorConstant.gray900,
              fontSize: getFontSize(
                16,
              ),
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 60,
            ),
            child: Text(
              "Feb",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.gray900,
                fontSize: getFontSize(
                  16,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 60,
            ),
            child: Text(
              "Mar",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.gray900,
                fontSize: getFontSize(
                  16,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 60,
            ),
            child: Text(
              "Apr",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.gray900,
                fontSize: getFontSize(
                  16,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
