import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/home_screen/widgets/spacing.dart';
import '../pulse_confirm_screen/pulse_confirm_screen.dart';

// ignore_for_file: must_be_immutable
class PulseNominalOnePage extends StatefulWidget {
  @override
  State<PulseNominalOnePage> createState() => _PulseNominalOnePageState();
}

class _PulseNominalOnePageState extends State<PulseNominalOnePage> {
  int radioGroup = -1;
  

  String radioGroup1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
 =>PulseConfirmScreen()),
  );
                  },
                  label:Text('Continue')),
      ),
       
      
      body: SingleChildScrollView(
        child: Container(
          padding: getPadding(
            left: 16,
            right: 16
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    "Choose Internet Package",
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
              Container(
                height: getVerticalSize(
                  1.00,
                ),
                width: size.width,
                margin: getMargin(
                  top: 24,
                  bottom: 24
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.bluegray51,
                ),
              ),
           
            
              InkWell(
                onTap: (){
                   setState(() {
                               radioGroup=0 ;
                              });
    
                },
                child: Row(
                  children: [
                      Theme(
                          data: Theme.of(context).copyWith(
                            unselectedWidgetColor: ColorConstant.bluegray401,
                            // disabledColor: Colors.blue
                          ),
                          child: Radio(
                            value: 0,
                            activeColor: ColorConstant.black900,
                            groupValue: radioGroup,
                            onChanged: (value) {
                              setState(() {
                               radioGroup=value as int ;
                              });
                            },
                          ),
                        ),
                        HorizontalSpace(width: 14),
                      
              
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              
                Padding(
                                padding: getPadding(
                                  right: 0,
                                ),
                                child: Text(
                                  "Call to all operator 85K",
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
                              ),
                              
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 0,
                              top: 5,
                              right: 0,
                            ),
                            child: Text(
                              "1.400-3.900 minutes call to fellow",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
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
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 0,
                              top: 8,
                              right: 0,
                            ),
                            child: Text(
                              "${Constants.currency} 87.500.000",
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
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
             
               Container(
                height: getVerticalSize(
                  1.00,
                ),
                width: size.width,
                margin: getMargin(
                  top: 24,
                  bottom: 24
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.bluegray51,
                ),
              ),
            
            
            
              InkWell(
                onTap: (){
                   setState(() {
                               radioGroup=1 ;
                              });
    
                },
                child: Row(
                  children: [
                      Theme(
                          data: Theme.of(context).copyWith(
                            unselectedWidgetColor: ColorConstant.bluegray401,
                            // disabledColor: Colors.blue
                          ),
                          child: Radio(
                            value: 1,
                            activeColor: ColorConstant.black900,
                            groupValue: radioGroup,
                            onChanged: (value) {
                              setState(() {
                               radioGroup=value as int ;
                              });
                            },
                          ),
                        ),
                        HorizontalSpace(width: 14),
                      
              
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              
                Padding(
                                padding: getPadding(
                                  right: 0,
                                ),
                                child: Text(
                                  "Call to all operator 135K (30days)",
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
                              ),
                              
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 0,
                              top: 5,
                              right: 0,
                            ),
                            child: Text(
                              "4.700-10.200 minutes call to fellow",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
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
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 0,
                              top: 8,
                              right: 0,
                            ),
                            child: Text(
                              "${Constants.currency} 87.500.000",
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
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
             
             
             
              Container(
                height: getVerticalSize(
                  1.00,
                ),
                width: size.width,
                margin: getMargin(
                  top: 24,
                  bottom: 24
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.bluegray51,
                ),
              ),
            
            
               InkWell(
                onTap: (){
                   setState(() {
                               radioGroup=2 ;
                              });
    
                },
                child: Row(
                  children: [
                      Theme(
                          data: Theme.of(context).copyWith(
                            unselectedWidgetColor: ColorConstant.bluegray401,
                            // disabledColor: Colors.blue
                          ),
                          child: Radio(
                            value: 2,
                            activeColor: ColorConstant.black900,
                            groupValue: radioGroup,
                            onChanged: (value) {
                              setState(() {
                               radioGroup=value as int ;
                              });
                            },
                          ),
                        ),
                        HorizontalSpace(width: 14),
                      
              
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
    
                  children: [
                    Padding(
                                    padding: getPadding(
                                      right: 0,
                                    ),
                                    child: Text(
                                      "Internet Package OMG 55K (Zona)",
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
                                  ),
                  SizedBox(
                    width: getHorizontalSize(10),
                  ),
                  Container(
                              margin: getMargin(
                                top: 1,
                                bottom: 1,
                              ),
                              padding: getPadding(
                                left: 6,
                                top: 1,
                                right: 7,
                                bottom: 1,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray900,
                              ),
                              child: Text(
                                "New",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    11,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                  height: 1.45,
                                ),
                              ),
                            ),
                  
                  ],
                ),
                              
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 0,
                              top: 5,
                              right: 0,
                            ),
                            child: Text(
                              "3.3 - 7GB + 1GB OMG!. valid till 30 days",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
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
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 0,
                              top: 8,
                              right: 0,
                            ),
                            child: Text(
                              "${Constants.currency} 87.500.000",
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
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
             
             
              
              Container(
                height: getVerticalSize(
                  1.00,
                ),
                width: size.width,
                margin: getMargin(
                  top: 24,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.bluegray51,
                ),
              ),
             
             
             
           
            ],
          ),
        ),
      ),
    );
  }
}
