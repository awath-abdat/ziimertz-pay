import 'package:animate_do/animate_do.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import '../history_screen/widgets/listgroupeleven1_item_widget.dart';
import '../history_screen/widgets/listgroupeleven_three_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

class HistoryScreen extends StatefulWidget {
  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  TextEditingController? _controller3;
  TextEditingController? _controller4;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller3 = TextEditingController(text: DateTime(1997).toString());
    _controller4 = TextEditingController(text: DateTime(1997).toString());
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
              margin: getMargin(left: 24, right: 24, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "History",
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
                  top: 16,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray900,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                          left: 20,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              4.00,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: getHorizontalSize(165),
                              height: getVerticalSize(70),
                              child: DateTimePicker(
                                type: DateTimePickerType.date,
                                decoration: InputDecoration(
                                  labelText: "From",
                                  labelStyle: TextStyle(
                                    fontFamily: "Urbanist",
                                    fontSize: getFontSize(
                                      14.0,
                                    ),
                                    color: ColorConstant.bluegray401,
                                  ),
                                  prefixIcon: Padding(
                                    padding: getPadding(left: 10, right: 10),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgCalendar,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ),
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorConstant.bluegray52)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorConstant.black900)),
                                  prefixIconConstraints: BoxConstraints(
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
                                dateMask: 'dd/MM/yyyy',
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
                            Container(
                              height: getVerticalSize(
                                50.00,
                              ),
                              width: getHorizontalSize(
                                1.00,
                              ),
                              margin: getMargin(
                                left: 0,
                                top: 8,
                                bottom: 8,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray302,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(165),
                              height: getVerticalSize(70),
                              child: DateTimePicker(
                                type: DateTimePickerType.date,
                                decoration: InputDecoration(
                                  labelText: "To",
                                  labelStyle: TextStyle(
                                    fontFamily: "Urbanist",
                                    fontSize: getFontSize(
                                      14.0,
                                    ),
                                    color: ColorConstant.bluegray401,
                                  ),
                                  prefixIcon: Padding(
                                    padding: getPadding(left: 10, right: 10),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgCalendar,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                  ),
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorConstant.bluegray52)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorConstant.black900)),
                                  prefixIconConstraints: BoxConstraints(
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
                                dateMask: 'dd/MM/yyyy',
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    14.0,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                ),

                                controller: _controller4,
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
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          // left: 20,
                          top: 12,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: getMargin(
                                left: 12,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    4.00,
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      left: 5,
                                      top: 6,
                                      right: 5,
                                      bottom: 5,
                                    ),
                                    margin: getMargin(
                                      left: 8,
                                      top: 8,
                                      right: 6,
                                      bottom: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          8.00,
                                        ),
                                      ),
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgVectorGreen600,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 6,
                                      top: 8,
                                      right: 8,
                                      bottom: 8,
                                    ),
                                    child: Text(
                                      "222.224.672",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        height: 1.33,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                left: 12,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    4.00,
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: getSize(
                                      16.00,
                                    ),
                                    width: getSize(
                                      16.00,
                                    ),
                                    margin: getMargin(
                                      left: 8,
                                      top: 8,
                                      bottom: 8,
                                    ),
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      color: ColorConstant.gray100,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            8.00,
                                          ),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                all: 4,
                                              ),
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgWarning,
                                                height: getSize(
                                                  8.00,
                                                ),
                                                width: getSize(
                                                  8.00,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 6,
                                      top: 8,
                                      right: 8,
                                      bottom: 8,
                                    ),
                                    child: Text(
                                      "222.224.672",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        height: 1.33,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                left: 12,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    4.00,
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: getPadding(
                                      all: 4,
                                    ),
                                    margin: getMargin(
                                      left: 6,
                                      top: 0,
                                      right: 6,
                                      bottom: 0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          8.00,
                                        ),
                                      ),
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgGroup1148X48,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 6,
                                      top: 8,
                                      right: 8,
                                      bottom: 8,
                                    ),
                                    child: Text(
                                      "560.000",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
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
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    margin: getMargin(
                      top: 10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: double.infinity,
                          margin: getMargin(
                            top: 21,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width,
                                padding: getPadding(
                                    left: 20, top: 10, bottom: 10, right: 20),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray100,
                                ),
                                child: Text(
                                  "July, 1 2022",
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
                                      top: 21,
                                      right: 20,
                                    ),
                                    child: ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Container(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                          width: getHorizontalSize(
                                            335.00,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.gray102,
                                          ),
                                        );
                                      },
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return Listgroupeleven1ItemWidget();
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: size.width,
                                margin: getMargin(
                                  top: 21,
                                ),
                                padding: getPadding(
                                    left: 20, top: 10, bottom: 10, right: 20),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray100,
                                ),
                                child: Text(
                                  "July, 2 2022",
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
                                      top: 21,
                                      right: 20,
                                      bottom: 34,
                                    ),
                                    child: ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Container(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                          width: getHorizontalSize(
                                            335.00,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.gray102,
                                          ),
                                        );
                                      },
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return ListgroupelevenThreeItemWidget();
                                      },
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
