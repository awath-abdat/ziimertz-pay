import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class FilterbottomsheetPage extends StatefulWidget {
  @override
  State<FilterbottomsheetPage> createState() => _FilterbottomsheetPageState();
}

class _FilterbottomsheetPageState extends State<FilterbottomsheetPage> {
  bool checkboxVal = false;

  bool checkboxVal1 = false;
  bool checkboxVal2 = false;
  bool checkboxVal3 = false;
  bool checkboxVal4 = false;
  bool checkboxVal5 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
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
              color: ColorConstant.gray201,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Filter",
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
                //  Checkbox(
                //                     activeColor: ColorConstant.black900,
                //                     side: BorderSide(color: ColorConstant.bluegray401),
                //                     shape: RoundedRectangleBorder(
                //                       side: BorderSide(
                //                         color: ColorConstant.black900,
                //                         width: getHorizontalSize(
                //                           3.00,
                //                         ),
                //                       ),
                //                       borderRadius: BorderRadius.circular(
                //                         getHorizontalSize(
                //                           2.00,
                //                         ),
                //                       ),
                //                     ),
                //                     materialTapTargetSize:
                //                         MaterialTapTargetSize.shrinkWrap,
                //                     value: checkboxVal,
                //                     onChanged: (value) {
                //                       setState(() {
                //                         checkboxVal=!checkboxVal;
                //                       });
                //                     },
                //                   ),
              ],
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
            child: Padding(
              padding: getPadding(
                left: 0,
                top: 16,
                right: 0,
              ),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: servicesList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                      servicesList[index].checkboxVal=!servicesList[index].checkboxVal;
                      });
                    },
                    child: Padding(
                        padding: getPadding(
                          left: 20,
                          top: 0,
                          right: 19,
                        ),
                        child: Padding(
                          padding: getPadding(
                            top: 8.0,
                            bottom: 8.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      svgPath: servicesList[index].image,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 14,
                                      right: 14,
                                      top: 20,
                                      bottom: 20,
                                    ),
                                    child: Text(
                                      servicesList[index].title,
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
                              Checkbox(
                                activeColor: ColorConstant.black900,
                                side: BorderSide(
                                    color: ColorConstant.bluegray401),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: ColorConstant.black900,
                                    width: getHorizontalSize(
                                      3.00,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      2.00,
                                    ),
                                  ),
                                ),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: servicesList[index].checkboxVal,
                                onChanged: (value) {
                                  setState(() {
                                    servicesList[index].checkboxVal=!servicesList[index].checkboxVal;
                                  });
                                },
                              ),
                           
                           
                            ],
                          ),
                        )),
                  );
                },
              ),
            ),
          ),
          CustomButton(
            width: 335,
            text: "Apply",
            margin: getMargin(
              left: 20,
              top: 32,
              right: 20,
              bottom: 20,
            ),
            onTap: () {
              Navigator.pop(context);
            },
            variant: ButtonVariant.FillGray901,
          ),
        ],
      ),
    );
  }

  List<Services> servicesList = [
    Services("Pulse", ImageConstant.pulse, false),
    Services("Internet", ImageConstant.internet, false),
    Services("Phone", ImageConstant.imgGroup251, false),
    Services("Electricity", ImageConstant.imgGroup25Gray900, false),
    Services("Water", ImageConstant.water, false),
  ];
}

class Services {
  String title;
  String image;
  bool checkboxVal;
  Services(this.title, this.image,this.checkboxVal);
}
