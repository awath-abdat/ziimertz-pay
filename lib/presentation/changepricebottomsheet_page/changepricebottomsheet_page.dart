import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class ChangepricebottomsheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
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
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 24,
              right: 20,
            ),
            child: Text(
              "Change Price",
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
         Padding(padding: getPadding(
          left: 20,
          right: 20,
           bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
         child:TextFormField(
          initialValue: "15000",
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    style:  TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                32,
                                              ),
                                              fontFamily: 'Urbanist',
                                              
                                              fontWeight: FontWeight.w700,
                                            ),
                                    // controller: textEditingController,
                                    
                                    decoration: InputDecoration(
                                      
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(color: ColorConstant.bluegray51
                                        )),
                                        enabledBorder:  UnderlineInputBorder(
                                        borderSide: BorderSide(color: ColorConstant.bluegray51
                                        )),
                                      
                                        focusedBorder:  UnderlineInputBorder(
                                        borderSide: BorderSide(color: ColorConstant.black900,
                                        
                                        ))
                                    ),
                                   ),
                                
         
         
         ),
          CustomButton(
            width: 335,
            text: "Save Change",
            margin: getMargin(
              left: 20,
              top: 24,
              right: 20,
              bottom: 20,
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
