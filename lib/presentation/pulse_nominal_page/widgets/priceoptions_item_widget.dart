import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class PriceoptionsItemWidget extends StatelessWidget {
  PriceoptionsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstant.gray900,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              4.00,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                left: 29,
                top: 24,
                right: 29,
              ),
              child: Text(
                "${Constants.currency} 15.000",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstant.gray100,
                  fontSize: getFontSize(
                    20,
                  ),
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700,
                  height: 1.40,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 29,
                top: 6,
                right: 28,
                bottom: 24,
              ),
              child: Text(
                "Price: ${Constants.currency} 14.000",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
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
    );
  }
}
