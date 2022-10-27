import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/models.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

import '../home_screen/widgets/spacing.dart';

class CollectiveAddScreen extends StatefulWidget {
  
  @override
  State<CollectiveAddScreen> createState() => _CollectiveAddScreenState();
}

class _CollectiveAddScreenState extends State<CollectiveAddScreen> {
  // bool checkbox = false;
   bool selectAllCheckboxVal = false;
  bool checkboxVal = false;

  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
                    onPressed: (){
                   
   Navigator.pop(context);
  

                    },
                    backgroundColor: Colors.black,
                    child: SvgPicture.asset(  ImageConstant.arrowRight)
                    
                    ),
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                ),
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
                 
                 
                  
                  Padding(
                    padding: getPadding(
                      left: 20,
                      right: 20
                    ),
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
                                                           border: UnderlineInputBorder(
                                                            borderSide: BorderSide(color:ColorConstant.bluegray51 )
                                                           ),
                                                           
                                                           focusedBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color:ColorConstant.black900 )
                                                           ),
                                                           enabledBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color:ColorConstant.bluegray51 )
                                                           ),
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
                                                  
                   
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: getMargin(
                          left: 10,
                          top: 18,
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.start,
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "Selected",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
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
                                      left: 5,
                                    ),
                                    child: Text(
                                      "(3 customer minimum)",
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
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 1,
                                  top: 14,
                                ),
                                child:choosenList.length>0? Container(
                                  height: getVerticalSize(
                                    70.00,
                                  ),
                                
                                  child:
                                   ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    physics: BouncingScrollPhysics(),
                                    itemCount: choosenList.length,
                                    itemBuilder: (context, index) {
                                      return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 7,
          left: 7
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: getVerticalSize(
                  40.00,
                ),
                width: getHorizontalSize(
                  49.00,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          right: 10,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: choosenList[index].img,
                            height: getSize(
                              40.00,
                            ),
                            width: getSize(
                              40.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 18,
                      width: 18,
                      margin: getMargin(
                        left: 10,
                        top: 10,
                      ),
                      variant: IconButtonVariant.OutlineWhiteA700,
                      shape: IconButtonShape.CircleBorder9,
                      padding: IconButtonPadding.PaddingAll4,
                      onTap: (){
                        setState(() {
                          choosenList.removeAt(index);
                        });
                      },
                      alignment: Alignment.bottomRight,
                      child: CommonImageView(
                        svgPath: ImageConstant.imgGroup140,
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
                  left: 7,
                  top: 9,
                  right: 15,
                ),
                child: Text(
                  choosenList[index].firstName,
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
            ),
          ],
        ),
      ),
    );
                                    },
                                  ),
                               
                               
                                ):SizedBox(),
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


                                                    if(customersList[index].checkBox){
                                                      choosenList.add(customersList[index]);
                                                    }
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
                              
                
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
 List<MyCustomers> customersList = [
    MyCustomers(
        name: "Devon Lane",
        firstName: "Devon",
        
         checkBox: false, img: ImageConstant.person2),
    MyCustomers(
        name: "Kristin Watson",
        firstName: "Kristin",
        
         checkBox: false, img: ImageConstant.person3),
    MyCustomers(
        name: "Arlene McCoy",
        firstName: "Arlene",

         checkBox: false, img: ImageConstant.person4),
    MyCustomers(
        name: "Devon Lane", 
        firstName: "Devon", 
        
        checkBox: false, img: ImageConstant.person2),
    MyCustomers(
        name: "Jenny Wilson",
        firstName: "Jenny",
        
        
         checkBox: false, img: ImageConstant.imgBase2),
    MyCustomers(
        name: "Devon Lane",
        firstName: "Devon",
        
         checkBox: false, img: ImageConstant.person2),
  ];

  List<MyCustomers>choosenList=[];



}


