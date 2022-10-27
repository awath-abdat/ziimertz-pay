import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import '../../../models/models.dart';
import '../../home_screen/widgets/spacing.dart';

class BillList extends StatefulWidget {
  const BillList({Key? key}) : super(key: key);

  @override
  State<BillList> createState() => _BillList();
}

class _BillList extends State<BillList> {
   bool selectAllCheckboxVal = false;
  bool checkboxVal = false;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
                           resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: 
        Container(
         width: getHorizontalSize(330),
            height: getVerticalSize(50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
             Container(
             width: getHorizontalSize(156),
             child: FloatingActionButton.extended(
                elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(getHorizontalSize(5))
                          ),
                          backgroundColor: ColorConstant.whiteA700,
                          foregroundColor: ColorConstant.black900,
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
//                    Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context)
//  =>PulseConfirmScreen()),
//   );
                          },
                          label:Text('Bill Recap')),
           ),
         
            Container(
              width: getHorizontalSize(156),
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
//                    Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context)
//  =>PulseConfirmScreen()),
//   );
                          },
                          label:Text('Pay Bill')),
            ),
          
         
          ],
        ),
      ),
       
                          body: SingleChildScrollView(

                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: size.width,
                                    margin: getMargin(
                                      top: 20,
                                    ),
                                    padding: getPadding(
                                      left: 22,
                                      top: 9,
                                      bottom: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.bluegray51,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          8.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "20 Customer, Your balance ${Constants.currency} 800.000",
                                      maxLines: null,
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
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            335.00,
                                          ),
                                          margin: getMargin(
                                            left: 21,
                                            top: 12,
                                            right: 19,
                                            bottom: 11,
                                          ),
                                          child: Text(
                                            "Customer data will move according to their status, this tab only displays customers who have not been billed.",
                                            maxLines: null,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w400,
                                              height: 1.50,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectAllCheckboxVal = !selectAllCheckboxVal;
                                      if(selectAllCheckboxVal){
                                      for(var i = 0; i < customersList.length; i++){
                                        customersList[i].checkBox=true;
                                  
                              }}
                              else {
                                 for(var i = 0; i < customersList.length; i++){
                                        customersList[i].checkBox=false;}
                              }
                                    });
                                  },
                                 
                                 
                                 
                                  child: Padding(
                                    padding: getPadding(
                                      left: 20,
                                      right: 20,
                                      top: 20
                                    ),
                                    child: Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Checkbox(
                                            activeColor: ColorConstant.black900,
                                            side: BorderSide(color: ColorConstant.bluegray401),
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
                                            value: selectAllCheckboxVal,
                                            onChanged: (value) {
                                              setState(() {
                                      selectAllCheckboxVal = !selectAllCheckboxVal;
                                      if(selectAllCheckboxVal){
                                      for(var i = 0; i < customersList.length; i++){
                                        customersList[i].checkBox=true;
                                  
                              }}
                              else {
                                 for(var i = 0; i < customersList.length; i++){
                                        customersList[i].checkBox=false;}
                              }
                                    });
                                            },
                                          ),
                                        ),
                                        Text(
                                          "Select all",
                                          style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(
                                              12,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w600,
                                            height: 1.50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                          
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: size.width,
                                  margin: getMargin(
                                    top: 17,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.bluegray52,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 20,
                                      top: 15,
                                      right: 19,
                                    ),
                                    child: ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Container(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                          width: size.width,
                                          decoration: BoxDecoration(
                                            color: ColorConstant.bluegray52,
                                          ),
                                        );
                                      },
                                      itemCount: customersList.length,
                                      itemBuilder: (context, index) {
                                        return Align(
                                          alignment: Alignment.center,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                customersList[index].checkBox =
                                                    !customersList[index].checkBox;
                                                    if(!customersList[index].checkBox)
                                                    selectAllCheckboxVal=false;
                                              });
                                            },
                                            child: Padding(
                                              padding: getPadding(
                                                top: 16.0,
                                                bottom: 16.0,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
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
                                                        value: customersList[index].checkBox,
                                                        onChanged: (value) {
                                                          setState(() {
                                                customersList[index].checkBox =
                                                    !customersList[index].checkBox;
                                                    if(!customersList[index].checkBox)
                                                    selectAllCheckboxVal=false;
                                              });
                                                        },
                                                      ),
                                                      HorizontalSpace(width: 5),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 0,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment.spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                      21.00,
                                                                    ),
                                                                  ),
                                                                  child: CommonImageView(
                                                                    imagePath: customersList[index].img,
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
                                                                    left: 0,
                                                                    top: 2,
                                                                    bottom: 2,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize.min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                       customersList[index].name,
                                                                        overflow: TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: TextStyle(
                                                                          color: ColorConstant
                                                                              .gray900,
                                                                          fontSize:
                                                                              getFontSize(
                                                                            14,
                                                                          ),
                                                                          fontFamily:
                                                                              'Urbanist',
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                          height: 1.29,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: getPadding(
                                                                          top: 4,
                                                                        ),
                                                                        child: Text(
                                                                          "ID38924U98323",
                                                                          overflow:
                                                                              TextOverflow
                                                                                  .ellipsis,
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: TextStyle(
                                                                            color: ColorConstant
                                                                                .bluegray401,
                                                                            fontSize:
                                                                                getFontSize(
                                                                              12,
                                                                            ),
                                                                            fontFamily:
                                                                                'Urbanist',
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .w400,
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
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            "July 22",
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
                                                        Text(
                                                          "${Constants.currency}80.000",
                                                          overflow:
                                                              TextOverflow.ellipsis,
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize: getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily: 'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.33,
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
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: size.width,
                                  margin: getMargin(
                                    top: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.bluegray52,
                                  ),
                                ),
                              VerticalSpace(height: 75)
                              
                              
                              ],
                            ),
                          ),
                        );
                       
                       
  }
   List<MyCustomers> customersList = [
    MyCustomers(
        name: "Devon Lane", checkBox: false, img: ImageConstant.person2),
    MyCustomers(
        name: "Kristin Watson", checkBox: false, img: ImageConstant.person3),
    MyCustomers(
        name: "Arlene McCoy", checkBox: false, img: ImageConstant.person4),
    MyCustomers(
        name: "Devon Lane", checkBox: false, img: ImageConstant.person2),
    MyCustomers(
        name: "Jenny Wilson", checkBox: false, img: ImageConstant.imgBase2),
    MyCustomers(
        name: "Devon Lane", checkBox: false, img: ImageConstant.person2),
  ];
}

