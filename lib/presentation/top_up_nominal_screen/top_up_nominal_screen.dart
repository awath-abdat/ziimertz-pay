import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';

class TopUpNominalScreen extends StatefulWidget {
  @override
  State<TopUpNominalScreen> createState() => _TopUpNominalScreenState();
}

class _TopUpNominalScreenState extends State<TopUpNominalScreen> {
 TextEditingController textEditingController = TextEditingController();
 String selectedAmount='50.000';
 bool amount1Selected=false;
 bool amount2Selected=true;
 bool amount3Selected=false;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.text=selectedAmount;
  }
 
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray901,
      body: SafeArea(
        child: Container(
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
                              svgPath: ImageConstant.imgVectorWhiteA70015X7,
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
                              left: 54,
                            ),
                            child: Text(
                              "Top Up",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
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
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 51,
                        right: 20,
                      ),
                      child: Text(
                        "Balance",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray601,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          height: 1.57,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 2,
                        right: 20,
                      ),
                      child: Text(
                        "${Constants.currency} 895.500,00",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            24,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        598.00,
                      ),
                      width: size.width,
                      margin: getMargin(
                        top: 26,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: getMargin(
                                      left: 23,
                                      top: 32,
                                      right: 23,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Top up minimum ',
                                            style: TextStyle(
                                              color: ColorConstant.bluegray401,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.57,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '${Constants.currency} 10.000',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.57,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                 Padding(
                                  padding: getPadding(
                                    left: 22,
                                    right: 22
                                  ),
                                   child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    style:  TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                48,
                                              ),
                                              fontFamily: 'Urbanist',
                                              
                                              fontWeight: FontWeight.w700,
                                            ),
                                    controller: textEditingController,
                                    
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
                                 
                               
                                 Padding(
                                    padding: getPadding(
                                      left: 23,
                                      top: 13,
                                      right: 22,
                                      bottom: 400,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              amount1Selected=true;
                                              amount2Selected=false;
                                              amount3Selected=false;
                                              selectedAmount="10.000";
                                              textEditingController.text=selectedAmount;
                                            });
                                          },
                                          child: Container(
                                            width: getHorizontalSize(
                                              98.00,
                                            ),
                                            padding: getPadding(
                                              left: 16,
                                              top: 12,
                                              right: 18,
                                              bottom: 12,
                                            ),
                                            decoration: BoxDecoration(
                                              color:amount1Selected?Colors.black: ColorConstant.gray100,
                                              borderRadius: BorderRadius.circular(
                                                getHorizontalSize(
                                                  2.00,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "${Constants.currency} 10.000",
                                              maxLines: null,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color:amount1Selected?Colors.white: ColorConstant.gray900,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                                height: 1.29,
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: (){
                                            setState(() {
                                              amount2Selected=true;
                                              amount1Selected=false;
                                              amount3Selected=false;
                                              selectedAmount="50.000";
                                              textEditingController.text=selectedAmount;
                                            });
                                          },
                                          child: Container(
                                            width: getHorizontalSize(
                                              101.00,
                                            ),
                                            margin: getMargin(
                                              left: 12,
                                              right: 12
                                            ),
                                            padding: getPadding(
                                              left: 16,
                                              top: 12,
                                              right: 18,
                                              bottom: 12,
                                            ),
                                            decoration: BoxDecoration(
                                              color:amount2Selected?Colors.black: ColorConstant.gray100,
                                              borderRadius: BorderRadius.circular(
                                                getHorizontalSize(
                                                  2.00,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "${Constants.currency} 50.000",
                                              maxLines: null,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color:amount2Selected? ColorConstant.whiteA700:Colors.black,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                                height: 1.29,
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: (){
                                            setState(() {
                                              amount3Selected=true;
                                              amount2Selected=false;
                                              amount1Selected=false;
                                              selectedAmount="100.000";
                                              textEditingController.text=selectedAmount;
                                            });
                                          },
                                          child: Container(
                                            width: getHorizontalSize(
                                              107.00,
                                            ),
                                            margin: getMargin(
                                              left: 0,
                                            ),
                                            padding: getPadding(
                                              left: 16,
                                              top: 12,
                                              right: 19,
                                              bottom: 12,
                                            ),
                                            decoration: BoxDecoration(
                                              color:amount3Selected? ColorConstant.black900: ColorConstant.gray100,
                                              borderRadius: BorderRadius.circular(
                                                getHorizontalSize(
                                                  2.00,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "${Constants.currency} 100.000",
                                              maxLines: null,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color:amount3Selected? ColorConstant.whiteA700: ColorConstant.gray900,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                                height: 1.29,
                                              ),
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
                         
                         
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: getMargin(
                                top: 10,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                               
                                 
                                  CustomButton(
                                    width: 335,
                                    text: "Continue",
                                    onTap: (){
                                      Navigator.pop(context);

                                    },
                                    margin: getMargin(
                                      left: 20,
                                      top: 32,
                                      right: 20,
                                      bottom: 20,
                                    ),
                                    variant: ButtonVariant.FillGray901,
                                    padding: ButtonPadding.PaddingAll12,
                                    fontStyle:
                                        ButtonFontStyle.UrbanistSemiBold16,
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
