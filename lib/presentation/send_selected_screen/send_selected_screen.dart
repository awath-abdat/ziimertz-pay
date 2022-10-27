import '../send_selected_screen/widgets/listoval3_item_widget.dart';
import '../send_selected_screen/widgets/listoval_four_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';
import 'package:cashcover/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class SendSelectedScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        left: 27,
                        top: 16,
                        right: 27,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 5,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgVector,
                              height: getVerticalSize(
                                15.00,
                              ),
                              width: getHorizontalSize(
                                7.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 80,
                            ),
                            child: Text(
                              "Send",
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        696.00,
                      ),
                      width: size.width,
                      margin: getMargin(
                        top: 31,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: getVerticalSize(
                                61.00,
                              ),
                              width: size.width,
                              margin: getMargin(
                                top: 161,
                                bottom: 161,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray100,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 19,
                                right: 20,
                                bottom: 4,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomSearchView(
                                    width: 335,
                                    focusNode: FocusNode(),
                                    controller: searchController,
                                    hintText: "Search Contact",
                                    margin: getMargin(
                                      left: 1,
                                    ),
                                    alignment: Alignment.center,
                                    prefix: Container(
                                      margin: getMargin(
                                        left: 19,
                                        top: 14,
                                        right: 15,
                                        bottom: 14,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgSearchGray900,
                                      ),
                                    ),
                                    prefixConstraints: BoxConstraints(
                                      minWidth: getSize(
                                        20.00,
                                      ),
                                      minHeight: getSize(
                                        20.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 24,
                                      right: 10,
                                    ),
                                    child: Text(
                                      "Recent Contact",
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
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 16,
                                      right: 10,
                                    ),
                                    child: ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return Listoval3ItemWidget();
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 30,
                                      right: 10,
                                    ),
                                    child: Text(
                                      "All Contact",
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
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 16,
                                      right: 10,
                                    ),
                                    child: ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return ListovalFourItemWidget();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: getMargin(
                                top: 10,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorConstant.gray5003f,
                                    spreadRadius: getHorizontalSize(
                                      2.00,
                                    ),
                                    blurRadius: getHorizontalSize(
                                      2.00,
                                    ),
                                    offset: Offset(
                                      0,
                                      0,
                                    ),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomButton(
                                    width: 335,
                                    text: "Continue",
                                    margin: getMargin(
                                      left: 20,
                                      top: 13,
                                      right: 20,
                                      bottom: 31,
                                    ),
                                    variant: ButtonVariant.FillBlack900,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
