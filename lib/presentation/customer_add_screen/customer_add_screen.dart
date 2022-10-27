import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';
import '../../widgets/custom_icon_button.dart';

class CustomerAddScreen extends StatefulWidget {
  @override
  State<CustomerAddScreen> createState() => _CustomerAddScreenState();
}

class _CustomerAddScreenState extends State<CustomerAddScreen> {
  int radioGroup = -1;
  String selectedService = "";

  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              height: size.height - 20,
              child: Column(
                children: [
                  Expanded(
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
                                    "Add Customer",
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
                        SizedBox(
                          height: getVerticalSize(60),
                        ),
                        Padding(
                          padding: getPadding(left: 22, right: 22),
                          child: TextFormField(
                            initialValue: "12321983219321",
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
                                labelText: "Customer ID",
                                labelStyle: TextStyle(
                                  color: ColorConstant.gray900,
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
                                ))),
                          ),
                        ),
                        SizedBox(
                          height: getVerticalSize(26),
                        ),
                        Padding(
                          padding: getPadding(left: 22, right: 22),
                          child: TextFormField(
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
                                labelText: "Customer Name",
                                labelStyle: TextStyle(
                                  color: ColorConstant.gray900,
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
                                ))),
                          ),
                        ),
                      
                      
                       InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(0),
                                )),
                                builder: (context) {
                                  return Container(
                                    width: double.infinity,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
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
                                        Padding(
                                          padding: getPadding(
                                            left: 20,
                                            top: 24,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "Choose Service",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
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
                                        Container(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                          width: getHorizontalSize(
                                            333.00,
                                          ),
                                          margin: getMargin(
                                            left: 20,
                                            top: 15,
                                            right: 20,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.bluegray52,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 0,
                                              top: 16,
                                              right: 0,
                                            ),
                                            child: StatefulBuilder(
                                              builder: (thisLowerContext, innerSetState) {
                                                return ListView.builder(
                                                  physics: BouncingScrollPhysics(),
                                                  shrinkWrap: true,
                                                  itemCount: servicesList.length,
                                                  itemBuilder: (context, index) {
                                                    return InkWell(
                                                      onTap: () {
                                                      innerSetState(() => radioGroup=index);
                                                     
                                                     
                                                        setState(() {
                                                         
                                                          selectedService =
                                                              servicesList[index]
                                                                  .title;
                                                        });
                                                      },
                                                      child: Align(
                                                        alignment: Alignment.center,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            left: 20,
                                                            top: 10,
                                                            bottom: 10,
                                                            right: 20,
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  CustomIconButton(
                                                                    height: 56,
                                                                    width: 56,
                                                                    child:
                                                                        CommonImageView(
                                                                      svgPath: servicesList[
                                                                              index]
                                                                          .image,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        getPadding(
                                                                      left: 14,
                                                                      right: 14,
                                                                      top: 20,
                                                                      bottom: 20,
                                                                    ),
                                                                    child: Text(
                                                                      servicesList[
                                                                              index]
                                                                          .title,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: ColorConstant
                                                                            .gray900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                          12,
                                                                        ),
                                                                        fontFamily:
                                                                            'Urbanist',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            1.33,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Theme(
                                                                  data: Theme.of(
                                                                          context)
                                                                      .copyWith(
                                                                    unselectedWidgetColor:
                                                                        ColorConstant
                                                                            .bluegray401,
                                                                    // disabledColor: Colors.blue
                                                                  ),
                                                                  child: Transform
                                                                      .scale(
                                                                    scale: 1.2,
                                                                    child: Radio(
                                                                      value: index,
                                                                      activeColor:
                                                                          ColorConstant
                                                                              .black900,
                                                                      groupValue:
                                                                          radioGroup,
                                                                      onChanged:
                                                                          (value) {
                                                                         innerSetState(() => radioGroup=index);
                                                     
                                                     
                                                        setState(() {
                                                         
                                                          selectedService =
                                                              servicesList[index]
                                                                  .title;
                                                        });
                                                                      },
                                                                    ),
                                                                  )),
                                                           
                                                           
                                                           
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              }
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 20,
                                top: 40,
                                right: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Choose Service",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray900,
                                          fontSize:selectedService!=""?getFontSize(10): getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w400,
                                          height: 1.57,
                                        ),
                                      ),
                                      selectedService!=""?Text(
                                        selectedService,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w400,
                                          height: 1.57,
                                        ),
                                      ):SizedBox(),
                                    ],
                                  ),
                                 
                                 
                                 
                                  Padding(
                                    padding: getPadding(
                                      top: 5,
                                      bottom: 5,
                                    ),
                                    child: CommonImageView(
                                      isRtl: isRtl,
                                      svgPath: ImageConstant.imgArrowright,
                                      height: getVerticalSize(
                                        12.00,
                                      ),
                                      width: getHorizontalSize(
                                        6.00,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            334.00,
                          ),
                          margin: getMargin(
                            left: 20,
                            top: 18,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray51,
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
                        top: 0,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.gray5003f,
                            spreadRadius: getHorizontalSize(
                              2.00,
                            ),
                            blurRadius: getHorizontalSize(
                              2.00,
                            ),
                            offset: Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                            width: 335,
                            text: "Save Customer",
                            margin: getMargin(
                              left: 20,
                              top: 12,
                              right: 20,
                              bottom: 20,
                            ),
                            onTap: (){
                              Navigator.pop(context);
                            },
                            variant: ButtonVariant.FillBlack900,
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

  List<Services> servicesList = [
    Services("Pulse", ImageConstant.pulse),
    Services("Internet", ImageConstant.internet),
    Services("Phone", ImageConstant.imgGroup251),
    Services("Electricity", ImageConstant.imgGroup25Gray900),
    Services("Water", ImageConstant.water),
  ];
}

class Services {
  String title;
  String image;
  Services(this.title, this.image);
}
