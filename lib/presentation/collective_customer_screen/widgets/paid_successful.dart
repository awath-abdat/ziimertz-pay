import 'package:date_time_picker/date_time_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/receipt_screen/receipt_screen.dart';
import '../../../models/models.dart';
import '../../home_screen/widgets/spacing.dart';

class PaidSuccessful extends StatefulWidget {
  const PaidSuccessful({Key? key}) : super(key: key);

  @override
  State<PaidSuccessful> createState() => _PaidSuccessful();
}

class _PaidSuccessful extends State<PaidSuccessful> {
  bool selectAllCheckboxVal = false;
  bool checkboxVal = false;
  TextEditingController? _controller3;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller3 = TextEditingController(text: DateTime(1997).toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: getHorizontalSize(330),
        height: getVerticalSize(50),
        child: FloatingActionButton.extended(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(getHorizontalSize(5))),
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceiptScreen()),
              );
            },
            label: Text('Print Receipt')),
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
                      0.00,
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
                padding: getPadding(
                  left: 20,
                  right: 20,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                ),
                child: DateTimePicker(
                  type: DateTimePickerType.date,
                  decoration: InputDecoration(
                    hintText: "Select month & year",
                    hintStyle: TextStyle(
                      fontFamily: "Urbanist",
                      fontSize: getFontSize(
                        14.0,
                      ),
                      color: ColorConstant.bluegray401,
                    ),
                    suffixIcon: CommonImageView(
                      svgPath: ImageConstant.imgCalendar,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                    ),
                    border: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorConstant.bluegray52)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorConstant.black900)),
                    suffixIconConstraints: BoxConstraints(
                      minWidth: getSize(
                        20.00,
                      ),
                      minHeight: getSize(
                        20.00,
                      ),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.only(
                      left: context.locale == Constants.engLocal
                          ? getHorizontalSize(
                              20.00,
                            )
                          : getHorizontalSize(0),
                      right: context.locale == Constants.arLocal
                          ? getHorizontalSize(
                              20.00,
                            )
                          : getHorizontalSize(0),
                      top: getVerticalSize(
                        20.80,
                      ),
                      bottom: getVerticalSize(
                        20.80,
                      ),
                    ),
                  ),
                  dateMask: 'MM/yyyy',
                  style: TextStyle(
                    fontSize: getFontSize(
                      14.0,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),

                  controller: _controller3,
                  //initialValue: _initialValue,
                  firstDate: DateTime(1900),

                  lastDate: DateTime.now(),

                  icon: CommonImageView(
                    svgPath: ImageConstant.imgCalendar,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                  ),

                  onChanged: (val) => setState(() => val),
                  validator: (val) {
                    setState(() => val ?? '');
                    return null;
                  },
                  onSaved: (val) => setState(() => val ?? ''),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectAllCheckboxVal = !selectAllCheckboxVal;
                  if (selectAllCheckboxVal) {
                    for (var i = 0; i < customersList.length; i++) {
                      customersList[i].checkBox = true;
                    }
                  } else {
                    for (var i = 0; i < customersList.length; i++) {
                      customersList[i].checkBox = false;
                    }
                  }
                });
              },
              child: Padding(
                padding: getPadding(left: 20, right: 20, top: 20),
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
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: selectAllCheckboxVal,
                        onChanged: (value) {
                          setState(() {
                            selectAllCheckboxVal = !selectAllCheckboxVal;
                            if (selectAllCheckboxVal) {
                              for (var i = 0; i < customersList.length; i++) {
                                customersList[i].checkBox = true;
                              }
                            } else {
                              for (var i = 0; i < customersList.length; i++) {
                                customersList[i].checkBox = false;
                              }
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
                            if (!customersList[index].checkBox)
                              selectAllCheckboxVal = false;
                          });
                        },
                        child: Padding(
                          padding: getPadding(
                            top: 16.0,
                            bottom: 16.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        if (!customersList[index].checkBox)
                                          selectAllCheckboxVal = false;
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
                                                imagePath:
                                                    customersList[index].img,
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
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    customersList[index].name,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(
                                                        14,
                                                      ),
                                                      fontFamily: 'Urbanist',
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
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .bluegray401,
                                                        fontSize: getFontSize(
                                                          12,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
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
