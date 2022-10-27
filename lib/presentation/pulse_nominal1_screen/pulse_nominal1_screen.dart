import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/pulse_all_contact_screen/pulse_all_contact_screen.dart';
import 'package:cashcover/presentation/pulse_emtpy_page/pulse_emtpy_page.dart';
import 'package:cashcover/presentation/pulse_nominal1_screen/pulse.dart';
import 'package:cashcover/presentation/pulse_nominal_one_page/pulse_nominal_one_page.dart';

class PulseNominal1Screen extends StatefulWidget {
  @override
  State<PulseNominal1Screen> createState() => _PulseNominal1ScreenState();
}

class _PulseNominal1ScreenState extends State<PulseNominal1Screen> with SingleTickerProviderStateMixin {
 
bool phoneNumberEntered=false;

 TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=tabController=TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController!.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
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
                              "Pulse",
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
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 45,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 6,
                              bottom: 8,
                            ),
                            child:phoneNumberEntered?CommonImageView(
                              svgPath: ImageConstant.imgReply,
                              height: getVerticalSize(
                                35.00,
                              ),
                              width: getHorizontalSize(
                                44.00,
                              ),
                            ):Container(
                              height: getVerticalSize(44),
                              width: getVerticalSize(44),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConstant.bluegray50
                              ),
                            ) ,
                          ),
                         
                         
                         Expanded(
                           child: Padding(
                            padding: getPadding(left: 10, right: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.gray900,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                  labelText: "Phone Number",
                                  labelStyle: TextStyle(
                                    color: ColorConstant.bluegray401,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorConstant.bluegray51)),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorConstant.bluegray51)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: ColorConstant.black900,
                                  )),
                                  suffixIconConstraints: BoxConstraints(
                                    minHeight: 18,
                                    minWidth: 18
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: (){
                                       showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          shape: RoundedRectangleBorder(
                                            
                                              borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(0),
                                              )
                                          ),
                                          builder: (context) {
                                            return PulseAllContactScreen();
                                          });
                                    },
                                    child: Padding(
                                          padding: getPadding(
                                            top: 15,
                                            bottom: 9,
                                          ),
                                          child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgPrimary18X16,
                                            height: getVerticalSize(
                                              18.00,
                                            ),
                                            width: getHorizontalSize(
                                              16.00,
                                            ),
                                          ),
                                        ),
                                  ),
                                   
                                  
                                  
                                  ),
                            onFieldSubmitted: (value){
                              setState(() {
                                phoneNumberEntered=true;
                                
                              });

                            },
                            
                            
                            ),
                                          
                                          
                                          
                                                ),
                         ),
                      
                      
                        
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: size.width,
                    margin: getMargin(
                      top: 36,
                    ),
                    child: TabBar(
                      controller: tabController,
                      //TODO: Please add tab controller
                      tabs: [
                        Tab(
                          text: "Pulse",
                        ),
                        Tab(
                          text: "Internet",
                        ),
                      ],
                      labelColor: ColorConstant.gray900,
                      unselectedLabelColor: ColorConstant.gray900,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 0,
                      top: 24,
                      right: 0,
                    ),
                    height: getVerticalSize(
                      497.00,
                    
                    ),
                    color: Colors.white,
                    child: TabBarView(

                      //TODO: Please add tab controller
                      controller: tabController,
                      children: [
                       phoneNumberEntered?
                       PulseScreen()
                       : PulseEmtpyPage(),
                        phoneNumberEntered?
                      PulseNominalOnePage()
                       : PulseEmtpyPage(),
                        
                      ],
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
 