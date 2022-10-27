import 'package:easy_localization/easy_localization.dart';
import 'package:cashcover/presentation/collective_customer_screen/widgets/bill_list.dart';
import 'package:cashcover/presentation/collective_customer_screen/widgets/customer.dart';
import 'package:cashcover/presentation/collective_customer_screen/widgets/paid_successful.dart';
import 'package:cashcover/presentation/home_screen/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';


class CollectiveCustomerScreen extends StatefulWidget {
  @override
  State<CollectiveCustomerScreen> createState() =>
      _CollectiveCustomerScreenState();
}

class _CollectiveCustomerScreenState extends State<CollectiveCustomerScreen>
    with SingleTickerProviderStateMixin {
  bool checkbox = false;
  TabController? tabController;
  bool selectAllCheckboxVal = false;
  bool checkboxVal = false;

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
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
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
                          Column(
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 0,
                                ),
                                child: Text(
                                  "Sucat Pelat Boong",
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
                              Padding(
                                padding: getPadding(
                                  left: 0,
                                ),
                                child: Text(
                                  "Electricity",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray401,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 1.40,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: getHorizontalSize(7),
                          ),
                        ],
                      ),
                    ),
                  ),
                 
                 
                  VerticalSpace(height: 24),
                  Container(
                    margin: getMargin(
                      left: 20,
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray51,
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
                        indicatorPadding: getPadding(
                          all: 2
                        ),
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: ColorConstant.whiteA700),
                        tabs: [
                          Tab(
                            text: "Customer",
                          ),
                          Tab(
                            text: "Bill List",
                          ),
                          Tab(
                            text: "Paid Success",
                          )
                        ]),
                  ),
                  Container(
                    height: getVerticalSize(626),
                    child: TabBarView(
                      controller: tabController,
                      children: [

                     Customers(),
                     BillList(),
                     PaidSuccessful()
                        
                        
                      
                       
                       
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


