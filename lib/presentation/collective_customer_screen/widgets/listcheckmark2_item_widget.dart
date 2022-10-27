import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/home_screen/widgets/spacing.dart';

// ignore: must_be_immutable
class Listcheckmark2ItemWidget extends StatefulWidget {

  Listcheckmark2ItemWidget();

  @override
  State<Listcheckmark2ItemWidget> createState() => _Listcheckmark2ItemWidgetState();
}

class _Listcheckmark2ItemWidgetState extends State<Listcheckmark2ItemWidget> {
  bool checkboxVal=false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: (){
          setState(() {
            checkboxVal=!checkboxVal;
          });
        },
        child: Padding(
          padding: getPadding(
            top: 16.0,
            bottom: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
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
                                      value:checkboxVal,
                                      onChanged: (value) {
                                        setState(() {
                                         checkboxVal=!checkboxVal;
                                        });
                                      },
                                    ),
      
                      HorizontalSpace(width: 5),           
             
                  Padding(
                    padding: getPadding(
                      left: 0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  21.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgBase2,
                                height: getSize(
                                  42.00,
                                ),
                                width: getSize(
                                  42.00,
                                ),
                              ),
                            ),
                            HorizontalSpace(width: 16),
                            Container(
                              margin: getMargin(
                                left: 0 ,
                                top: 2,
                                bottom: 2,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jenny Wilson",
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
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                    ),
                                    child: Text(
                                      "ID38924U98323",
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
                       
                       
                      
                    
                     ],
                    ),
                  ),
                ],
              ),
            
              Container(
                      margin: getMargin(
                        left: 0,
                        top: 5,
                        bottom: 2,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: Text(
                              "FAILED",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.red600,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                height: 1.33,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: getHorizontalSize(
                                127.00,
                              ),
                              margin: getMargin(
                                top: 3,
                                right: 1,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  Text(
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
                                ],
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
  }
}
