import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/transfer_details_screen/transfer_details_screen.dart';

class SendInputAmountScreen extends StatefulWidget {
  @override
  State<SendInputAmountScreen> createState() => _SendInputAmountScreenState();
}

class _SendInputAmountScreenState extends State<SendInputAmountScreen> {
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
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold( 
           backgroundColor: ColorConstant.whiteA700,

      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: 
        Container(
         width: getHorizontalSize(330),
            height: getVerticalSize(50),
        child: FloatingActionButton.extended(
          elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(getHorizontalSize(5))
                  ),
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
      
                  onPressed: (){
                   Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>TransferDetailsScreen()),
  );
                  },
                  label:Text('Continue')),
      ),
       
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
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
                          Padding(
                            padding: getPadding(
                              left: 0,
                            ),
                            child: Text(
                              "Send to",
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
                  
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 20,
                        top: 38,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.gray200,
                            spreadRadius: getHorizontalSize(
                              2.00,
                            ),
                            blurRadius: getHorizontalSize(
                              10.00,
                            ),
                            offset: Offset(
                              0,
                              6,
                            ),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 18,
                              top: 18,
                              bottom: 20,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  21.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgOval4,
                                height: getSize(
                                  42.00,
                                ),
                                width: getSize(
                                  42.00,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 16,
                              top: 21,
                              right: 16,
                              bottom: 21,
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
                                    "Annette Black",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray902,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700,
                                      height: 1.29,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 4,
                                  ),
                                  child: Text(
                                    "jessica.hanson@gmail.com",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray402,
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
                                      bottom: 20,
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
                              
                
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 0,
                        right: 20,
                        bottom: 20,
                      ),
                      child: Text(
                        "+ Fee ${Constants.currency} 500",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.red601,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          height: 2.14,
                        ),
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
