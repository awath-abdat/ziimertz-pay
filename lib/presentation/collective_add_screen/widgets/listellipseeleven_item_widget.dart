import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

import '../../../models/models.dart';

// ignore: must_be_immutable
class ListellipseelevenItemWidget extends StatelessWidget {
  int index;
  List<MyCustomers> chooenList;
  ListellipseelevenItemWidget(
    {required this.index,
    required this.chooenList}
  );

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 7,
          left: 7
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: getVerticalSize(
                  40.00,
                ),
                width: getHorizontalSize(
                  49.00,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          right: 10,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: customersList[index].img,
                            height: getSize(
                              40.00,
                            ),
                            width: getSize(
                              40.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 18,
                      width: 18,
                      margin: getMargin(
                        left: 10,
                        top: 10,
                      ),
                      variant: IconButtonVariant.OutlineWhiteA700,
                      shape: IconButtonShape.CircleBorder9,
                      padding: IconButtonPadding.PaddingAll4,
                      alignment: Alignment.bottomRight,
                      child: CommonImageView(
                        svgPath: ImageConstant.imgGroup140,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 7,
                  top: 9,
                  right: 15,
                ),
                child: Text(
                  customersList[index].name,
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
            ),
          ],
        ),
      ),
    );
  }
  List<MyCustomers> customersList = [
    MyCustomers(
        name: "Devon", checkBox: false, img: ImageConstant.person2),
    MyCustomers(
        name: "Kristin", checkBox: false, img: ImageConstant.person3),
    MyCustomers(
        name: "Arlene", checkBox: false, img: ImageConstant.person4),
    MyCustomers(
        name: "Devon", checkBox: false, img: ImageConstant.person2),
    MyCustomers(
        name: "Jenny", checkBox: false, img: ImageConstant.imgBase2),
    MyCustomers(
        name: "Devon", checkBox: false, img: ImageConstant.person2),
  ];
}
