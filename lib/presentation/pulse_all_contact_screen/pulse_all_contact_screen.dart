import '../pulse_all_contact_screen/widgets/listrectanglethirtyeight_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

class PulseAllContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: getVerticalSize(700),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: size.width,
            margin: getMargin(
              left: 20,
              top: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "All Contact",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.bluegray902,
                    fontSize: getFontSize(
                      20,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                    height: 1.40,
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: getPadding(
                      top: 4,
                      bottom: 3,
                    ),
                    child: Text(
                      "Cancel",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 1.29,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
         
         Container(
          margin: getMargin(
            top: 20,
          ),
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: size.width,
                        decoration: BoxDecoration(
                          color: ColorConstant.bluegray51,
                        ),
                      ),
           Padding(
             padding: getPadding(
               left: 24,
               top: 20,
               right: 24,
             ),
             child: TextFormField(
                                       
                                       decoration: InputDecoration(
                                         contentPadding: getPadding(
                                           left: 16,
                                           right: 16,

                                         ),
                                         hintText: "Search Contact",
                                         hintStyle: TextStyle(
                                           color: ColorConstant.bluegray401,
                                           fontFamily: "Urbanist"
                                         ),
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          prefixIconConstraints:  BoxConstraints(
               minWidth: getSize(
                 20.00,
               ),
               minHeight: getSize(
                 20.00,
               ),
             ),
                                          prefixIcon:   Padding(
                                            padding: getPadding(
                                             left: 16,
                                             right: 16
                                            ),
                                            child: CommonImageView(
                                                 svgPath: ImageConstant
                                                     .imgSearch,
                                                 height: getSize(
                                                   24.00,
                                                 ),
                                                 width: getSize(
                                                   24.00,
                                                 ),
                                               ),
                                          ),
                                            
                                       ),
                                       
                                      ),
                                   
                       
                       
           ),
                    
         
        Expanded(
                              child: SingleChildScrollView(
                                child: ListView.separated(
                                  padding: getPadding(
                                    left: 20,
                                    right: 20,
                                    top: 30,
                                    bottom: 24
                                  ),
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return Container(
                                      margin: getMargin(
                                        bottom: 20
                                      ),

                                      height: getVerticalSize(
                                        1.00,
                                      ),
                                      width: getHorizontalSize(
                                        289.00,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            ColorConstant.bluegray51,
                                      ),
                                    );
                                  },
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return ListrectanglethirtyeightItemWidget();
                                  },
                                ),
                              ),
                            ),
                       
                         
        
        ],
      ),
    );
    
  }
}



    //  Container(
    //                         margin: getMargin(
    //                           left: 18,
    //                           bottom: 4,
    //                         ),
    //                         child: Column(
    //                           mainAxisSize: MainAxisSize.min,
    //                           crossAxisAlignment:
    //                               CrossAxisAlignment.start,
    //                           mainAxisAlignment:
    //                               MainAxisAlignment.start,
    //                           children: [
    //                             Text(
    //                               "A",
    //                               overflow: TextOverflow.ellipsis,
    //                               textAlign: TextAlign.right,
    //                               style: TextStyle(
    //                                 color: ColorConstant.gray900,
    //                                 fontSize: getFontSize(
    //                                   16,
    //                                 ),
    //                                 fontFamily: 'Urbanist',
    //                                 fontWeight: FontWeight.w700,
    //                                 height: 1.25,
    //                               ),
    //                             ),
    //                             Align(
    //                               alignment: Alignment.center,
    //                               child: Padding(
    //                                 padding: getPadding(
    //                                   left: 2,
    //                                   top: 28,
    //                                   right: 1,
    //                                 ),
    //                                 child: Text(
    //                                   "B",
    //                                   overflow:
    //                                       TextOverflow.ellipsis,
    //                                   textAlign: TextAlign.right,
    //                                   style: TextStyle(
    //                                     color: ColorConstant
    //                                         .bluegray401,
    //                                     fontSize: getFontSize(
    //                                       16,
    //                                     ),
    //                                     fontFamily: 'Urbanist',
    //                                     fontWeight:
    //                                         FontWeight.w700,
    //                                     height: 1.25,
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             Align(
    //                               alignment: Alignment.center,
    //                               child: Padding(
    //                                 padding: getPadding(
    //                                   left: 1,
    //                                   top: 28,
    //                                 ),
    //                                 child: Text(
    //                                   "C",
    //                                   overflow:
    //                                       TextOverflow.ellipsis,
    //                                   textAlign: TextAlign.right,
    //                                   style: TextStyle(
    //                                     color: ColorConstant
    //                                         .bluegray401,
    //                                     fontSize: getFontSize(
    //                                       16,
    //                                     ),
    //                                     fontFamily: 'Urbanist',
    //                                     fontWeight:
    //                                         FontWeight.w700,
    //                                     height: 1.25,
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             Padding(
    //                               padding: getPadding(
    //                                 top: 28,
    //                                 right: 10,
    //                               ),
    //                               child: Text(
    //                                 "D",
    //                                 overflow:
    //                                     TextOverflow.ellipsis,
    //                                 textAlign: TextAlign.right,
    //                                 style: TextStyle(
    //                                   color: ColorConstant
    //                                       .bluegray401,
    //                                   fontSize: getFontSize(
    //                                     16,
    //                                   ),
    //                                   fontFamily: 'Urbanist',
    //                                   fontWeight: FontWeight.w700,
    //                                   height: 1.25,
    //                                 ),
    //                               ),
    //                             ),
    //                             Padding(
    //                               padding: getPadding(
    //                                 left: 1,
    //                                 top: 28,
    //                                 right: 10,
    //                               ),
    //                               child: Text(
    //                                 "E",
    //                                 overflow:
    //                                     TextOverflow.ellipsis,
    //                                 textAlign: TextAlign.right,
    //                                 style: TextStyle(
    //                                   color: ColorConstant
    //                                       .bluegray401,
    //                                   fontSize: getFontSize(
    //                                     16,
    //                                   ),
    //                                   fontFamily: 'Urbanist',
    //                                   fontWeight: FontWeight.w700,
    //                                   height: 1.25,
    //                                 ),
    //                               ),
    //                             ),
    //                             Padding(
    //                               padding: getPadding(
    //                                 left: 2,
    //                                 top: 28,
    //                                 right: 10,
    //                               ),
    //                               child: Text(
    //                                 "F",
    //                                 overflow:
    //                                     TextOverflow.ellipsis,
    //                                 textAlign: TextAlign.right,
    //                                 style: TextStyle(
    //                                   color: ColorConstant
    //                                       .bluegray401,
    //                                   fontSize: getFontSize(
    //                                     16,
    //                                   ),
    //                                   fontFamily: 'Urbanist',
    //                                   fontWeight: FontWeight.w700,
    //                                   height: 1.25,
    //                                 ),
    //                               ),
    //                             ),
    //                             Align(
    //                               alignment: Alignment.center,
    //                               child: Padding(
    //                                 padding: getPadding(
    //                                   top: 28,
    //                                 ),
    //                                 child: Text(
    //                                   "G",
    //                                   overflow:
    //                                       TextOverflow.ellipsis,
    //                                   textAlign: TextAlign.right,
    //                                   style: TextStyle(
    //                                     color: ColorConstant
    //                                         .bluegray401,
    //                                     fontSize: getFontSize(
    //                                       16,
    //                                     ),
    //                                     fontFamily: 'Urbanist',
    //                                     fontWeight:
    //                                         FontWeight.w700,
    //                                     height: 1.25,
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             Align(
    //                               alignment: Alignment.center,
    //                               child: Padding(
    //                                 padding: getPadding(
    //                                   left: 1,
    //                                   top: 28,
    //                                   right: 1,
    //                                 ),
    //                                 child: Text(
    //                                   "H",
    //                                   overflow:
    //                                       TextOverflow.ellipsis,
    //                                   textAlign: TextAlign.right,
    //                                   style: TextStyle(
    //                                     color: ColorConstant
    //                                         .bluegray401,
    //                                     fontSize: getFontSize(
    //                                       16,
    //                                     ),
    //                                     fontFamily: 'Urbanist',
    //                                     fontWeight:
    //                                         FontWeight.w700,
    //                                     height: 1.25,
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             Align(
    //                               alignment: Alignment.center,
    //                               child: Padding(
    //                                 padding: getPadding(
    //                                   left: 4,
    //                                   top: 28,
    //                                   right: 4,
    //                                 ),
    //                                 child: Text(
    //                                   "I",
    //                                   overflow:
    //                                       TextOverflow.ellipsis,
    //                                   textAlign: TextAlign.right,
    //                                   style: TextStyle(
    //                                     color: ColorConstant
    //                                         .bluegray401,
    //                                     fontSize: getFontSize(
    //                                       16,
    //                                     ),
    //                                     fontFamily: 'Urbanist',
    //                                     fontWeight:
    //                                         FontWeight.w700,
    //                                     height: 1.25,
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             Align(
    //                               alignment: Alignment.center,
    //                               child: Padding(
    //                                 padding: getPadding(
    //                                   left: 3,
    //                                   top: 28,
    //                                   right: 2,
    //                                 ),
    //                                 child: Text(
    //                                   "J",
    //                                   overflow:
    //                                       TextOverflow.ellipsis,
    //                                   textAlign: TextAlign.right,
    //                                   style: TextStyle(
    //                                     color: ColorConstant
    //                                         .bluegray401,
    //                                     fontSize: getFontSize(
    //                                       16,
    //                                     ),
    //                                     fontFamily: 'Urbanist',
    //                                     fontWeight:
    //                                         FontWeight.w700,
    //                                     height: 1.25,
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             Align(
    //                               alignment: Alignment.center,
    //                               child: Padding(
    //                                 padding: getPadding(
    //                                   left: 2,
    //                                   top: 28,
    //                                   right: 1,
    //                                 ),
    //                                 child: Text(
    //                                   "K",
    //                                   overflow:
    //                                       TextOverflow.ellipsis,
    //                                   textAlign: TextAlign.right,
    //                                   style: TextStyle(
    //                                     color: ColorConstant
    //                                         .bluegray401,
    //                                     fontSize: getFontSize(
    //                                       16,
    //                                     ),
    //                                     fontFamily: 'Urbanist',
    //                                     fontWeight:
    //                                         FontWeight.w700,
    //                                     height: 1.25,
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             Align(
    //                               alignment: Alignment.center,
    //                               child: Padding(
    //                                 padding: getPadding(
    //                                   left: 2,
    //                                   top: 28,
    //                                   right: 2,
    //                                 ),
    //                                 child: Text(
    //                                   "L",
    //                                   overflow:
    //                                       TextOverflow.ellipsis,
    //                                   textAlign: TextAlign.right,
    //                                   style: TextStyle(
    //                                     color: ColorConstant
    //                                         .bluegray401,
    //                                     fontSize: getFontSize(
    //                                       16,
    //                                     ),
    //                                     fontFamily: 'Urbanist',
    //                                     fontWeight:
    //                                         FontWeight.w700,
    //                                     height: 1.25,
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
                       