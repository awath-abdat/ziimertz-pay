import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/home_screen/widgets/spacing.dart';

// ignore: must_be_immutable
class SelectTicketItemWidget extends StatelessWidget {
  SelectTicketItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              Container(
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
                        "Date",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.bluegray401,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          height: 1.33,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Text(
                        "18 Jul 2020",
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
                  ],
                ),
              ),
              HorizontalSpace(width: 16),
              Container(
                margin: getMargin(
                  left: 0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Bonus",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.bluegray401,
                        fontSize: getFontSize(
                          12,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
                        height: 1.33,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                        right: 10,
                      ),
                      child: Text(
                        "No",
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
                  ],
                ),
              ),
            ],
          ),
           HorizontalSpace(width: 61),
          Container(
            margin: getMargin(
              left: 0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Route Number",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorConstant.bluegray401,
                    fontSize: getFontSize(
                      12,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                    height: 1.33,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                    right: 10,
                  ),
                  child: Text(
                    "2 , 6 , 5",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
