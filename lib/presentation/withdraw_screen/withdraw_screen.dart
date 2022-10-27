import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/success_state_transfer_one_screen/success_state_transfer_one_screen.dart';
import 'package:cashcover/widgets/custom_button.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

class WithdrawScreen extends StatefulWidget {
  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  TextEditingController textEditingController = TextEditingController();
  String selectedAmount = '50.000';
  bool amount1Selected = false;
  bool amount2Selected = true;
  bool amount3Selected = false;
  Object? value2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.text = selectedAmount;
  }

  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale == Constants.arLocal;

    return Scaffold(
      backgroundColor: ColorConstant.gray901,
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
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(0),
                  )),
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                        top: 12,
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
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 24,
                                          right: 20,
                                        ),
                                        child: Text(
                                          "Verification",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(
                                              24,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: getHorizontalSize(
                                          321.00,
                                        ),
                                        margin: getMargin(
                                          left: 20,
                                          top: 12,
                                          right: 20,
                                        ),
                                        child: Text(
                                          "Enter the 4-digits code to process your withdraw",
                                          maxLines: null,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.bluegray401,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w400,
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                          left: 20,
                                          top: 36,
                                          right: 20,
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
                                      child: Container(
                                        width: getHorizontalSize(
                                          256.00,
                                        ),
                                        height: getVerticalSize(
                                          60.00,
                                        ),
                                        child: PinCodeTextField(
                                          appContext: context,
                                          length: 4,
                                          obscureText: false,
                                          obscuringCharacter: '*',
                                          keyboardType: TextInputType.number,
                                          autoDismissKeyboard: true,
                                          enableActiveFill: true,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                          ],
                                          onChanged: (value) {},
                                          textStyle: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(
                                              24,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                          ),
                                          pinTheme: PinTheme(
                                            fieldHeight: getHorizontalSize(
                                              52.00,
                                            ),
                                            fieldWidth: getHorizontalSize(
                                              52.00,
                                            ),
                                            shape: PinCodeFieldShape.box,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                4.00,
                                              ),
                                            ),
                                            selectedFillColor:
                                                ColorConstant.whiteA700,
                                            activeFillColor:
                                                ColorConstant.whiteA700,
                                            inactiveFillColor:
                                                ColorConstant.whiteA700,
                                            inactiveColor:
                                                ColorConstant.bluegray51,
                                            selectedColor:
                                                ColorConstant.black900,
                                            activeColor:
                                                ColorConstant.bluegray51,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 24,
                                          right: 20,
                                        ),
                                        child: Text(
                                          "Didn’t receive the code?",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: ColorConstant.bluegray300,
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
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 4,
                                          right: 20,
                                        ),
                                        child: Text(
                                          "Resend Code",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
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
                                    CustomButton(
                                      width: 335,
                                      text: "Verify Withdraw",
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SuccessStateTransferOneScreen(
                                                    isWithdraw: true,
                                                  )),
                                        );
                                      },
                                      margin: getMargin(
                                        left: 20,
                                        top: 32,
                                        right: 20,
                                        bottom: 20,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            label: Text('Continue')),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
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
                          isRtl: isRtl,
                          isBackBtn: true,
                          svgPath: ImageConstant.imgVectorWhiteA70015X7,
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
                          "Withdraw",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
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
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 51,
                      right: 20,
                    ),
                    child: Text(
                      "Balance",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray601,
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
                      left: 20,
                      top: 2,
                      right: 20,
                    ),
                    child: Text(
                      "${Constants.currency} 8,523,00",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: size.height,
                    width: double.infinity,
                    margin: getMargin(
                      top: 26,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: getMargin(
                            left: 20,
                            top: 32,
                            right: 20,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Top up minimum ',
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
                                TextSpan(
                                  text: '${Constants.currency} 10.000',
                                  style: TextStyle(
                                    color: ColorConstant.gray900,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 1.57,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: getPadding(left: 22, right: 22),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                48,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                            controller: textEditingController,
                            decoration: InputDecoration(
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
                        Padding(
                          padding: getPadding(
                            left: 23,
                            top: 13,
                            right: 22,
                            bottom: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    amount1Selected = true;
                                    amount2Selected = false;
                                    amount3Selected = false;
                                    selectedAmount = "10.000";
                                    textEditingController.text = selectedAmount;
                                  });
                                },
                                child: Container(
                                  width: getHorizontalSize(
                                    98.00,
                                  ),
                                  padding: getPadding(
                                    left: 16,
                                    top: 12,
                                    right: 18,
                                    bottom: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    color: amount1Selected
                                        ? Colors.black
                                        : ColorConstant.gray100,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        2.00,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "${Constants.currency} 10.000",
                                    maxLines: null,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: amount1Selected
                                          ? Colors.white
                                          : ColorConstant.gray900,
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
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    amount2Selected = true;
                                    amount1Selected = false;
                                    amount3Selected = false;
                                    selectedAmount = "50.000";
                                    textEditingController.text = selectedAmount;
                                  });
                                },
                                child: Container(
                                  width: getHorizontalSize(
                                    101.00,
                                  ),
                                  margin: getMargin(left: 12, right: 12),
                                  padding: getPadding(
                                    left: 16,
                                    top: 12,
                                    right: 18,
                                    bottom: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    color: amount2Selected
                                        ? Colors.black
                                        : ColorConstant.gray100,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        2.00,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "${Constants.currency} 50.000",
                                    maxLines: null,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: amount2Selected
                                          ? ColorConstant.whiteA700
                                          : Colors.black,
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
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    amount3Selected = true;
                                    amount2Selected = false;
                                    amount1Selected = false;
                                    selectedAmount = "100.000";
                                    textEditingController.text = selectedAmount;
                                  });
                                },
                                child: Container(
                                  width: getHorizontalSize(
                                    107.00,
                                  ),
                                  margin: getMargin(
                                    left: 0,
                                  ),
                                  padding: getPadding(
                                    left: 16,
                                    top: 12,
                                    right: 19,
                                    bottom: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    color: amount3Selected
                                        ? ColorConstant.black900
                                        : ColorConstant.gray100,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        2.00,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "${Constants.currency} 100.000",
                                    maxLines: null,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: amount3Selected
                                          ? ColorConstant.whiteA700
                                          : ColorConstant.gray900,
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
                        ),
                        Container(
                          margin: getMargin(
                            left: 20,
                            top: 29,
                            right: 20,
                          ),
                          padding: getPadding(right: 16, left: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                4.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.indigo50,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(70),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                autofocus: true,
                                value: value2,
                                isExpanded: true,
                                icon: Container(
                                  padding: getPadding(),
                                  height: getSize(
                                    8.33,
                                  ),
                                  width: getSize(
                                    10.00,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                    height: getVerticalSize(
                                      6.00,
                                    ),
                                    width: getHorizontalSize(
                                      12.00,
                                    ),
                                  ),
                                ),
                                hint: Text(
                                  'Select withdrawal method',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray600,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 1.00,
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    this.value2 = value;
                                  });
                                },
                                items: dropdownItemList2
                                    .map<DropdownMenuItem<BanksList>>(
                                        (BanksList value) {
                                  return DropdownMenuItem<BanksList>(
                                    value: value,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 0,
                                            top: 0,
                                            bottom: 0,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomIconButton(
                                                height: 48,
                                                width: 48,
                                                variant: IconButtonVariant
                                                    .FillGray50,
                                                shape: IconButtonShape
                                                    .CircleBorder24,
                                                child: CommonImageView(
                                                  svgPath: value.image,
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  left: 12,
                                                  right: 12,
                                                  top: 0,
                                                  bottom: 0,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        right: 0,
                                                      ),
                                                      child: Text(
                                                        value.title,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize: getFontSize(
                                                            16,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height: 1.25,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 0,
                                                      ),
                                                      child: Text(
                                                        value.description,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .bluegray401,
                                                          fontSize: getFontSize(
                                                            14,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.57,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                selectedItemBuilder: (BuildContext context) {
                                  return dropdownItemList2
                                      .map((BanksList value) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 0,
                                            right: 0,
                                            top: 0,
                                            bottom: 0,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomIconButton(
                                                height: 48,
                                                width: 48,
                                                variant: IconButtonVariant
                                                    .FillGray50,
                                                shape: IconButtonShape
                                                    .CircleBorder24,
                                                child: CommonImageView(
                                                  svgPath: value.image,
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  left: 12,
                                                  right: 12,
                                                  top: 0,
                                                  bottom: 0,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        right: 0,
                                                      ),
                                                      child: Text(
                                                        value.title,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize: getFontSize(
                                                            16,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          // height: 1.25,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 0,
                                                      ),
                                                      child: Text(
                                                        value.description,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .bluegray401,
                                                          fontSize: getFontSize(
                                                            14,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  }).toList();
                                },
                              ),
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
    );
  }

  List<BanksList> dropdownItemList2 = [
    BanksList(
      title: "BCA",
      description: "****9928",
      image: ImageConstant.imgFrame33,
    ),
    BanksList(
      title: "MTN",
      description: "******95",
      image: ImageConstant.imgFrame33,
    ),
  ];
}

class BanksList {
  String title;
  String description;
  String image;

  BanksList(
      {required this.title, required this.description, required this.image});
}
