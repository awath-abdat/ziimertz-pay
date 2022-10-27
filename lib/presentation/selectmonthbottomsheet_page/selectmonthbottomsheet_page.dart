import '../selectmonthbottomsheet_page/widgets/listjan_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class SelectmonthbottomsheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(
              5.00,
            ),
            width: getHorizontalSize(
              56.00,
            ),
            margin: getMargin(
              left: 20,
              top: 16,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.bluegray51,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  2.50,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 24,
              right: 20,
            ),
            child: Text(
              "June 2022",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorConstant.gray900,
                fontSize: getFontSize(
                  20,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
                height: 1.40,
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              333.00,
            ),
            margin: getMargin(
              left: 20,
              top: 15,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.bluegray52,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: getMargin(
                left: 20,
                top: 23,
                right: 20,
                bottom: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 8,
                      right: 7,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 6,
                            bottom: 6,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgVectorBluegray900,
                            height: getVerticalSize(
                              15.00,
                            ),
                            width: getHorizontalSize(
                              7.00,
                            ),
                          ),
                        ),
                        Text(
                          "2022",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              20,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                            height: 1.40,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                            bottom: 6,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgVectorBluegray902,
                            height: getVerticalSize(
                              15.00,
                            ),
                            width: getHorizontalSize(
                              7.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 19,
                      top: 34,
                      right: 19,
                    ),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ListjanItemWidget();
                      },
                    ),
                  ),
                  CustomButton(
                    width: 335,
                    text: "Done",
                    margin: getMargin(
                      top: 47,
                    ),
                    variant: ButtonVariant.FillGray901,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
