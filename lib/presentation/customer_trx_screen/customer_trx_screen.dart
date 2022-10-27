import 'package:animate_do/animate_do.dart';
import 'package:cashcover/presentation/collective_add_screen/collective_add_screen.dart';
import 'package:cashcover/presentation/customer_add_screen/customer_add_screen.dart';
import 'package:cashcover/presentation/filterbottomsheet_page/filterbottomsheet_page.dart';
import 'package:cashcover/presentation/home_screen/widgets/spacing.dart';
import '../collective_customer_screen/collective_customer_screen.dart';
import '../customer_trx_screen/widgets/listoval_item_widget.dart';
import '../customer_trx_screen/widgets/listoval_two_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

class CustomerTrxScreen extends StatefulWidget {
  @override
  State<CustomerTrxScreen> createState() => _CustomerTrxScreenState();
}

class _CustomerTrxScreenState extends State<CustomerTrxScreen> with SingleTickerProviderStateMixin{
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController!.dispose();
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray900,
      body: SafeArea(

        child: Column(
          children: [
             Container(
                          width: size.width,
                          margin: getMargin(
                            left: 24,
                            right: 24,
                            top: 10
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Customer",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    32,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                  height: 1.19,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                  bottom: 16,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgVectorWhiteA700,
                                  height: getVerticalSize(
                                    19.00,
                                  ),
                                  width: getHorizontalSize(
                                    15.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: double.infinity,
                            margin: getMargin(
                              top: 32,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray900,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: getMargin(
                                    left: 20,
                                    right: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray300,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        4.00,
                                      ),
                                    ),
                                  ),
                                  child: TabBar(
                                    controller: tabController,
                                    labelColor: ColorConstant.black900,
                                    unselectedLabelColor: Colors.black,
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Urbanist",
                                      fontWeight: FontWeight.w600,
                                      fontSize: getFontSize(12),



                                    ),
                                    unselectedLabelStyle: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Urbanist",
                                      fontWeight: FontWeight.w400,
                                      fontSize: getFontSize(12),



                                    ),
                                    indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: ColorConstant.whiteA700
                                    ),
                                    
                                     tabs: [
                                      Tab(
                                        text: "Transaction",
                                      ),
                                      Tab(
                                        text: "Customer",
                                      ),
                                      Tab(text: "Collective Bill",)
                                    ]),
                                    
                                    
                                    
                                ),
                              
                              ],
                            ),
                          ),
                        ),
                     SizedBox(
                      height: getVerticalSize(20),
                     ),
                     
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Container(
                    // width: size.width,
                    child: SingleChildScrollView(
                      child: Container(
                        margin: getMargin(
                          top: 0,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                           
      
      
                           Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: double.infinity,
                                        margin: getMargin(
                                          top: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
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
                                                  left: 20,
                                                  top: 0,
                                                  right: 20,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                 Expanded(

                                                   child: TextFormField(
                                                    
                                                    decoration: InputDecoration(
                                                      contentPadding: getPadding(
                                                        left: 16,
                                                        right: 16,

                                                      ),
                                                      hintText: "Search here",
                                                      hintStyle: TextStyle(
                                                        color: ColorConstant.gray300,
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
                                                   
                                                   
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          height: getVerticalSize(
                                                            24.00,
                                                          ),
                                                          width: getHorizontalSize(
                                                            1.00,
                                                          ),
                                                          decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray50,
                                                          ),
                                                        ),
                                                        HorizontalSpace(width: 15,

                                                        ),
                                                        InkWell(
                                                          onTap: (){
                                                            showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          shape: RoundedRectangleBorder(
                                            
                                              borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(20),
                                              )
                                          ),
                                          builder: (context) {
                                            return FilterbottomsheetPage();
                                          });
                                                          },
                                                          child: Padding(
                                                            padding: getPadding(
                                                              left: 0,
                                                              top: 3,
                                                              bottom: 3,
                                                            ),
                                                            child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgPrimaryBlack900,
                                                              height: getVerticalSize(
                                                                18.00,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                14.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                 
                                                 
                                                 
                                                  ],
                                                ),
                                              ),
                                            ),
                                            
                                            
                                           
                                            Container(
                                              width: size.width,
                                              margin: getMargin(
                                                top: 16,
                                              ),
                                              padding: getPadding(
                                                left: 20,
                                                top: 10,
                                                bottom: 10,
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorConstant.gray100,
                                              ),
                                              child: Text(
                                                "Call Package",
                                                maxLines: null,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    12,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.33,
                                                ),
                                              ),
                                            ),
                                            FadeInLeft(
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 20,
                                                    top: 20,
                                                    right: 18,
                                                  ),
                                                  child: ListView.builder(
                                                    physics: BouncingScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemCount: 2,
                                                    itemBuilder: (context, index) {
                                                      return ListovalItemWidget();
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: size.width,
                                              margin: getMargin(
                                                top: 20,
                                              ),
                                              padding: getPadding(
                                                left: 20,
                                                top: 10,
                                                bottom: 10,
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorConstant.gray100,
                                              ),
                                              child: Text(
                                                "Electricity",
                                                maxLines: null,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    12,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.33,
                                                ),
                                              ),
                                            ),
                                            FadeInLeft(
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 20,
                                                    top: 20,
                                                    right: 18,
                                                    bottom: 38,
                                                  ),
                                                  child: ListView.builder(
                                                    physics: BouncingScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemCount: 5,
                                                    itemBuilder: (context, index) {
                                                      return ListovalTwoItemWidget();
                                                    },
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
                    ),
                  ),
                 
                 Scaffold(
                  floatingActionButton: FloatingActionButton(
                    onPressed: (){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>CustomerAddScreen()),
  );

                    },
                    backgroundColor: Colors.black,
                    child: Icon(Icons.add)),
                 
                 
                 
                   body: Container(
                      // width: size.width,
                      child: SingleChildScrollView(
                        child: Container(
                          margin: getMargin(
                            top: 0,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                             
                       
                       
                             Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width: double.infinity,
                                          margin: getMargin(
                                            top: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
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
                                                  left: 20,
                                                  top: 0,
                                                  right: 20,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                 Expanded(

                                                   child: TextFormField(
                                                    
                                                    decoration: InputDecoration(
                                                      contentPadding: getPadding(
                                                        left: 16,
                                                        right: 16,

                                                      ),
                                                      hintText: "Search here",
                                                      hintStyle: TextStyle(
                                                        color: ColorConstant.gray300,
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
                                                   
                                                   
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          height: getVerticalSize(
                                                            24.00,
                                                          ),
                                                          width: getHorizontalSize(
                                                            1.00,
                                                          ),
                                                          decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray50,
                                                          ),
                                                        ),
                                                        HorizontalSpace(width: 15,

                                                        ),
                                                        InkWell(
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
                                            return FilterbottomsheetPage();
                                          });
                                                          },
                                                          child: Padding(
                                                            padding: getPadding(
                                                              left: 0,
                                                              top: 3,
                                                              bottom: 3,
                                                            ),
                                                            child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgPrimaryBlack900,
                                                              height: getVerticalSize(
                                                                18.00,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                14.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                 
                                                 
                                                 
                                                  ],
                                                ),
                                              ),
                                            ),
                                            
                                            
                                              
                                              Container(
                                                width: size.width,
                                                margin: getMargin(
                                                  top: 16,
                                                ),
                                                padding: getPadding(
                                                  left: 20,
                                                  right: 20,
                                                  top: 10,
                                                  bottom: 10,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.gray100,
                                                ),
                                                child: Text(
                                                  "Call Package",
                                                  maxLines: null,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.33,
                                                  ),
                                                ),
                                              ),
                                              FadeInLeft(
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 20,
                                                      right: 18,
                                                    ),
                                                    child: ListView.builder(
                                                      physics: BouncingScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount: 2,
                                                      itemBuilder: (context, index) {
                                                        return ListovalItemWidget();
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: size.width,
                                                margin: getMargin(
                                                  top: 20,
                                                ),
                                                padding: getPadding(
                                                  left: 20,
                                                  right: 20,
                                                  top: 10,
                                                  bottom: 10,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.gray100,
                                                ),
                                                child: Text(
                                                  "Electricity",
                                                  maxLines: null,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.33,
                                                  ),
                                                ),
                                              ),
                                              FadeInLeft(
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 20,
                                                      right: 18,
                                                      bottom: 38,
                                                    ),
                                                    child: ListView.builder(
                                                      physics: BouncingScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount: 5,
                                                      itemBuilder: (context, index) {
                                                        return ListovalTwoItemWidget();
                                                      },
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
                      ),
                    ),
                 ),
               
                  Scaffold(
                       floatingActionButton: FloatingActionButton(
                    onPressed: (){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>CollectiveAddScreen()),
  );

                    },
                    backgroundColor: Colors.black,
                    child: Icon(Icons.add)),
                 
                 
                    body: Container(
                      // width: size.width,
                      child: SingleChildScrollView(
                        child: Container(
                          margin: getMargin(
                            top: 0,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                             
                        
                        
                             Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width: double.infinity,
                                          margin: getMargin(
                                            top: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
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
                                                    left: 20,
                                                    top: 0,
                                                    right: 20,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                   Expanded(
                  
                                                     child: TextFormField(
                                                      
                                                      decoration: InputDecoration(
                                                        contentPadding: getPadding(
                                                          left: 16,
                                                          right: 16,
                  
                                                        ),
                                                        hintText: "Search here",
                                                        hintStyle: TextStyle(
                                                          color: ColorConstant.gray300,
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
                                                     
                                                     
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment.center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                            height: getVerticalSize(
                                                              24.00,
                                                            ),
                                                            width: getHorizontalSize(
                                                              1.00,
                                                            ),
                                                            decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .bluegray50,
                                                            ),
                                                          ),
                                                          HorizontalSpace(width: 15,
                  
                                                          ),
                                                          InkWell(
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
                                              return FilterbottomsheetPage();
                                            });
                                                            },
                                                            child: Padding(
                                                              padding: getPadding(
                                                                left: 0,
                                                                top: 3,
                                                                bottom: 3,
                                                              ),
                                                              child: CommonImageView(
                                                                svgPath: ImageConstant
                                                                    .imgPrimaryBlack900,
                                                                height: getVerticalSize(
                                                                  18.00,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  14.00,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                   
                                                   
                                                   
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              
                                              
                                              Container(
                                                width: size.width,
                                                margin: getMargin(
                                                  top: 16,
                                                ),
                                                padding: getPadding(
                                                  left: 20,
                                                  top: 10,
                                                  bottom: 10,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.gray100,
                                                ),
                                                child: Text(
                                                  "Call Package",
                                                  maxLines: null,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.33,
                                                  ),
                                                ),
                                              ),
                                              FadeInLeft(
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 20,
                                                      right: 18,
                                                    ),
                                                    child: ListView.builder(
                                                      physics: BouncingScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount: 2,
                                                      itemBuilder: (context, index) {
                                                        return Align(
                                                    alignment: Alignment.center,
                                                    child: InkWell(
                                                      onTap: (){
                                                        Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context)
                                               =>CollectiveCustomerScreen()),
                                                );
                                                      },
                                                      child: Padding(
                                                        padding: getPadding(
                                                          top: 10.0,
                                                          bottom: 10.0,
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
                                                                ClipRRect(
                                                                  borderRadius: BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                      21.00,
                                                                    ),
                                                                  ),
                                                                  child: CommonImageView(
                                                                    imagePath: ImageConstant.imgOval,
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
                                                                          right: 6,
                                                                        ),
                                                                        child: Text(
                                                                          "082332849001",
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
                                                            Padding(
                                                              padding: getPadding(
                                                                left: 0,
                                                                top: 12,
                                                                bottom: 14,
                                                              ),
                                                              child: Text(
                                                                "July, 2 2022",
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
                                                      ),
                                                    ),
                                                  );
                                                
                                                
                                                    
                                                    
                                                    
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: size.width,
                                                margin: getMargin(
                                                  top: 20,
                                                ),
                                                padding: getPadding(
                                                  left: 20,
                                                  top: 10,
                                                  bottom: 10,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.gray100,
                                                ),
                                                child: Text(
                                                  "Electricity",
                                                  maxLines: null,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.33,
                                                  ),
                                                ),
                                              ),
                                              FadeInLeft(
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 20,
                                                      right: 18,
                                                      bottom: 38,
                                                    ),
                                                    child: ListView.builder(
                                                      physics: BouncingScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount: 5,
                                                      itemBuilder: (context, index) {
                                                        return ListovalTwoItemWidget();
                                                      },
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
                      ),
                    ),
                  ),
               
                
                
               
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
