import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class ListgroupelevenItemWidget extends StatelessWidget {
  ListgroupelevenItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 16.5,
        bottom: 16.5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: getVerticalSize(48),
                width: getHorizontalSize(48),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                 color: ColorConstant.gray100 
                ),
                child: Icon(Icons.check,color: Colors.green,),
              ),
              
              
              Container(
                margin: getMargin(
                  left: 16,
                  top: 3,
                  bottom: 4,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "SN10-081212179828",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                        height: 1.25,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "2:20 PM",
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
                          Container(
                            height: getSize(
                              3.00,
                            ),
                            width: getSize(
                              3.00,
                            ),
                            margin: getMargin(
                              left: 8,
                              top: 6,
                              bottom: 6,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray401,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  1.50,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "Jun 22, 2022",
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
           
           
            ],
          ),
          Padding(
            padding: getPadding(
              left: 0,
              top: 14,
              bottom: 16,
            ),
            child: Text(
              "${Constants.currency}120.000",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
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
    );
  }
}
