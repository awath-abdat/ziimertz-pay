import 'package:easy_localization/easy_localization.dart';
import 'package:cashcover/presentation/home_screen/widgets/spacing.dart';
import 'package:cashcover/presentation/send_input_amount_screen/send_input_amount_screen.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_search_view.dart';

class SendScreen extends StatefulWidget {
  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  TextEditingController searchController = TextEditingController();

  int selectedIndex = -1;

  int selectedIndex2 = -1;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: selected
          ? Container(
              width: getHorizontalSize(330),
              height: getVerticalSize(50),
              child: FloatingActionButton.extended(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(getHorizontalSize(5))),
                  backgroundColor: ColorConstant.black900,
                  foregroundColor: ColorConstant.whiteA700,
                  extendedTextStyle: TextStyle(
                    color: ColorConstant.gray50,
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.07,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SendInputAmountScreen()),
                    );
                  },
                  label: Text('Continue')),
            )
          : Container(
              width: getHorizontalSize(120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FloatingActionButton(
                    backgroundColor: ColorConstant.bluegray401,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgPaybutton,
                    ),
                    onPressed: () {},
                  ),
                  HorizontalSpace(width: 10),
                  FloatingActionButton(
                    backgroundColor: ColorConstant.black900,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgNewbutton,
                      height: getVerticalSize(
                        30.00,
                      ),
                      width: getHorizontalSize(
                        30.00,
                      ),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),

      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width,
                margin: getMargin(
                  left: 27,
                  top: 16,
                  right: 27,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 4,
                        bottom: 5,
                      ),
                      child: Container(
                        child: CommonImageView(
                          isBackBtn: true,
                          isRtl: isRtl,
                          svgPath: ImageConstant.imgVectorBluegray900,
                          height: getVerticalSize(
                            15.00,
                          ),
                          width: getHorizontalSize(
                            7.00,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 0,
                      ),
                      child: Text(
                        "Send",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            20,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getHorizontalSize(7),
                    ),
                  ],
                ),
              ),
            ),
            CustomSearchView(
              width: 335,
              focusNode: FocusNode(),
              controller: searchController,
              hintText: "Search Contact",
              margin: getMargin(
                left: 19,
                top: 31,
                right: 19,
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
                  svgPath: ImageConstant.imgSearchBluegray902,
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 19,
                          top: 24,
                          right: 19,
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
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 19,
                          top: 16,
                          right: 19,
                        ),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Align(
                              alignment: Alignment.centerLeft,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                    selectedIndex2 = -1;
                                    selected = true;
                                  });
                                },
                                child: Container(
                                  color: selectedIndex == index
                                      ? ColorConstant.gray200
                                      : Colors.white,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 10.0,
                                      right: 35,
                                      bottom: 10.0,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              21.00,
                                            ),
                                          ),
                                          child: CommonImageView(
                                            imagePath: ImageConstant.imgOval8,
                                            height: getSize(
                                              42.00,
                                            ),
                                            width: getSize(
                                              42.00,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            left: 16,
                                            right: 16,
                                            top: 3,
                                            bottom: 1,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    right: 1,
                                                  ),
                                                  child: Text(
                                                    "Kathryn Murphy",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(
                                                        14,
                                                      ),
                                                      fontFamily: 'Urbanist',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.29,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 4,
                                                ),
                                                child: Text(
                                                  "kathryn@gmail.com",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .bluegray402,
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
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        // height: getVerticalSize(
                        //   326.00,
                        // ),
                        // width: getHorizontalSize(
                        //   258.00,
                        // ),
                        margin: getMargin(
                          left: 19,
                          top: 30,
                          right: 19,
                          bottom: 50,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              right: 0,
                            ),
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
                                  padding: getPadding(top: 16, bottom: 24),
                                  child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 2,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex2 = index;
                                            selectedIndex = -1;
                                            selected = true;
                                          });
                                        },
                                        child: Container(
                                          color: selectedIndex2 == index
                                              ? ColorConstant.gray200
                                              : Colors.white,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 10.0,
                                              right: 15,
                                              bottom: 10.0,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      21.00,
                                                    ),
                                                  ),
                                                  child: CommonImageView(
                                                    imagePath:
                                                        ImageConstant.imgOval15,
                                                    height: getSize(
                                                      42.00,
                                                    ),
                                                    width: getSize(
                                                      42.00,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: getMargin(
                                                    left: 16,
                                                    right: 16,
                                                    top: 3,
                                                    bottom: 1,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          right: 10,
                                                        ),
                                                        child: Text(
                                                          "Marvin McKinney",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray900,
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.29,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 4,
                                                        ),
                                                        child: Text(
                                                          "willie.jennings@gmail.com",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .bluegray402,
                                                            fontSize:
                                                                getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w400,
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
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
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
    );
  }
}


//  CustomFloatingButton(
//                     height: 60,
//                     width: 60,
//                     margin: getMargin(
//                       left: 29,
//                       top: 41,
//                       right: 29,
//                       bottom: 41,
//                     ),
//                     variant: FloatingButtonVariant.OutlineGray40077,
//                     alignment: Alignment.bottomRight,
//                     child: CommonImageView(
//                       svgPath: ImageConstant.imgNewbutton,
//                       height: getVerticalSize(
//                         30.00,
//                       ),
//                       width: getHorizontalSize(
//                         30.00,
//                       ),
//                     ),
//                   ),
                
                

                //  CustomIconButton(
                //               height: 60,
                //               width: 60,
                //               margin: getMargin(
                //                 left: 10,
                //                 top: 37,
                //                 bottom: 37,
                //               ),
                //               variant:
                //                   IconButtonVariant.OutlineBluegray10077,
                //               padding: IconButtonPadding.PaddingAll20,
                //               alignment: Alignment.bottomRight,
                //               child: CommonImageView(
                //                 svgPath: ImageConstant.imgPaybutton,
                //               ),
                //             ),
                          