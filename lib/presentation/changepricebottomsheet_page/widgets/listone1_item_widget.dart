import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class Listone1ItemWidget extends StatelessWidget {
  Listone1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 3,
        top: 18.0,
        right: 1,
        bottom: 18.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "1",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorConstant.gray900,
              fontSize: getFontSize(
                24,
              ),
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 114,
            ),
            child: Text(
              "2",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.gray900,
                fontSize: getFontSize(
                  24,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 112,
            ),
            child: Text(
              "3",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.gray900,
                fontSize: getFontSize(
                  24,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
