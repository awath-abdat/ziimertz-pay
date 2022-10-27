import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

class TopUpVaDetailScreen extends StatefulWidget {
  @override
  State<TopUpVaDetailScreen> createState() => _TopUpVaDetailScreenState();
}

class _TopUpVaDetailScreenState extends State<TopUpVaDetailScreen> with SingleTickerProviderStateMixin{
   TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=tabController=TabController(length: 3, vsync: this);
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
       resizeToAvoidBottomInset: false,
floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton:Padding(
          padding:  EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
          child: Container(
            width: getHorizontalSize(330),
            height: getVerticalSize(50),
            child: FloatingActionButton.extended(
        elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(getHorizontalSize(5))
                ),
                backgroundColor: ColorConstant.gray901,
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
                  Navigator.pop(context);
                },
                label:Text('Done')),
          ),
        ),
   
   
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
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
                                "Virtual Account",
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
                          width: getHorizontalSize(40),
                         ),
                         
                          ],
                        ),
                      ),
                    ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
               
                
                
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 32,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CommonImageView(
                            svgPath: ImageConstant.imgLightbulb,
                            height: getSize(
                              32.00,
                            ),
                            width: getSize(
                              32.00,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 12,
                              top: 6,
                              bottom: 6,
                            ),
                            child: Text(
                              "BCA",
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
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 17,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
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
                                    "Nomor Virtual Account",
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
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                  ),
                                  child: Text(
                                    "10292130912321",
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
                              ],
                            ),
                          ),
                         Container(
                          padding: getPadding(
                            left: 9,
                            right: 9,
                            bottom: 6,
                            top: 6
                          ),
                          decoration: BoxDecoration(
                             border: Border.all(color: ColorConstant.gray100),
                             borderRadius: BorderRadius.circular(8)
                             
                          ),
                          child: Row(
                            children: [
                              Container(
                              margin: getMargin(
                                left: 9,
                                top: 6,
                                right: 6,
                                bottom: 6,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgCopy,
                              ),
                            ),
                         Text("Copy", style: TextStyle(
                          fontSize: getFontSize(12),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Urbanist",
                         ),)
                          
                            ],
                          ),
                         ),
                       
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child:Container( 
                      margin: getMargin(
                        left: 0,
                        right: 0,
                        top: 30
                      ),
                     
                                  height: getVerticalSize(50),
                                  width: size.width,
                                  child: TabBar(
                                  
                                    isScrollable: true,
                            controller: tabController,
                            indicatorWeight: 6,
                          // padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20)),
                            indicator: UnderlineTabIndicator(
              
                              insets: EdgeInsets.symmetric(horizontal: getHorizontalSize(20)),
                              borderSide: BorderSide(color: ColorConstant.black900)
                            ),
                          
                            labelColor: ColorConstant.black900,
                            unselectedLabelColor:ColorConstant.black900,
                            labelStyle:TextStyle(
                              
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                              ) ,
                              unselectedLabelStyle: TextStyle(
                              
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w400,
                              ) ,
                            
                            tabs: [
                            Tab(text: "Your likes",),
                            Tab(
                              text: "Queue",
                            ),
                            Tab(text: "Downloaded",)
                          ]),
                      
        
        
                                )
                
                  ),
                  // Container(
                  //   height: getVerticalSize(
                  //     1.00,
                  //   ),
                  //   width: size.width,
                  //   decoration: BoxDecoration(
                  //     color: ColorConstant.gray202,
                  //   ),
                  // ),
                
                Container(
                  height: getVerticalSize(507),
                  child: TabBarView(
                    controller: tabController,
                    children: [
                        SingleChildScrollView(
                
                          child: Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              margin: getMargin(
                          left: 20,
                          top: 24,
                          bottom: 80,
                          right: 20,
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
                                "Payment Instructions",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.black900,
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
                                top: 13,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "1",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Input ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'ATM',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' card and your ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'PIN',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "2",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose menu ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Other Transaction',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "3",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Transfer',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "4",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' BCA Virtual Account',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "5",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Input ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Virtual Account Number',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "6",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Correct',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "7",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Yes',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "8",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Take your ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Payment Proof',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "9",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: Text(
                                      "Done",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        height: 1.43,
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
                           
                 SingleChildScrollView(
                   child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                          left: 20,
                          top: 24,
                            bottom: 80,
                          right: 20,
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
                                "Payment Instructions",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.black900,
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
                                top: 13,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "1",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Input ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'ATM',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' card and your ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'PIN',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "2",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose menu ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Other Transaction',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "3",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Transfer',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "4",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' BCA Virtual Account',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "5",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Input ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Virtual Account Number',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "6",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Correct',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "7",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Yes',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "8",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Take your ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Payment Proof',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "9",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: Text(
                                      "Done",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        height: 1.43,
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
                           
                 SingleChildScrollView(
                   child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                          left: 20,
                          top: 24,
                            bottom: 80,
                          right: 20,
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
                                "Payment Instructions",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.black900,
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
                                top: 13,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "1",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Input ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'ATM',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' card and your ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'PIN',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "2",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose menu ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Other Transaction',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "3",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Transfer',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "4",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' BCA Virtual Account',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "5",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Input ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Virtual Account Number',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "6",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Correct',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "7",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Choose ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Yes',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "8",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Take your ',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Payment Proof',
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              height: 1.43,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 12,
                                      top: 9,
                                      right: 12,
                                      bottom: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "9",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 12,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: Text(
                                      "Done",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        height: 1.43,
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
                           
                           
                    ],
                
                
                  ))
                
                ],
              ),
                 
            ],
          ),
        ),
      ),
    );
  }
}
