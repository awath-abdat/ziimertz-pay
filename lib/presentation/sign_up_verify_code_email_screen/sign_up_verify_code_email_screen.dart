import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/sign_up_set_up_screen/sign_up_set_up_screen.dart';
import 'package:cashcover/widgets/custom_button.dart';

class SignUpVerifyCodeEmailScreen extends StatefulWidget {
  @override
  State<SignUpVerifyCodeEmailScreen> createState() => _SignUpVerifyCodeEmailScreenState();
}

class _SignUpVerifyCodeEmailScreenState extends State<SignUpVerifyCodeEmailScreen> {
  final stopWatchTimer = StopWatchTimer(
  mode: StopWatchMode.countDown,
  presetMillisecond: StopWatchTimer.getMilliSecFromMinute(1), // millisecond => minute.
  onChange: (value) => print('onChange $value'),
  onChangeRawSecond: (value) => print('onChangeRawSecond $value'),
  onChangeRawMinute: (value) => print('onChangeRawMinute $value'),
);




@override
  void initState() {
    // TODO: implement initState
    super.initState();
     stopWatchTimer.onExecute.add(StopWatchExecute.start);

  }
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      backgroundColor: ColorConstant.gray900,
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 27,
                      top: 20,
                      right: 27,
                    ),
                    child: CommonImageView(
                      isBackBtn: true,
                      isRtl: isRtl,
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
                      left: 24,
                      top: 36,
                      right: 24,
                    ),
                    child: Text(
                      "Verify Code",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        328.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 8,
                        right: 20,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Please enter the code we just sent to email ',
                              style: TextStyle(
                                color: ColorConstant.bluegray300,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                            TextSpan(
                              text: 'timsmxxx@email.com',
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 46,
                        right: 20,
                      ),
                      child: Container(
                        width: getHorizontalSize(
                          256.00,
                        ),
                        height: getVerticalSize(
                          52.00,
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
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onChanged: (value) {},
                          textStyle: TextStyle(
                            color: ColorConstant.whiteA700,
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
                                2.00,
                              ),
                            ),
                            selectedFillColor: ColorConstant.whiteA70019,
                            activeFillColor: ColorConstant.whiteA70019,
                            inactiveFillColor: ColorConstant.whiteA70019,
                            inactiveColor: ColorConstant.fromHex("#1212121D"),
                            selectedColor: ColorConstant.fromHex("#1212121D"),
                            activeColor: ColorConstant.fromHex("#1212121D"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 20,
                        top: 24,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StreamBuilder<int>(
                            stream: stopWatchTimer.secondTime,
                            initialData: 0,
                            builder: (context, snap) {
                              final value = snap.data;
                              return Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      value.toString(),
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          20,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                         
                         
                         
                          Text(
                            'Resend code in ',
                            style: TextStyle(
                              color: ColorConstant.whiteA7007f,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                              height: 1.25,
                            ),
                          ),
                        ],
                      ),
                    
                    
                   
                    ),
                 
                 
                 
                  ),
                  CustomButton(
                    width: 335,
                    text: "Continue",
                    margin: getMargin(
                      left: 20,
                      top: 58,
                      right: 20,
                      bottom: 20,
                    ),
                    onTap: (){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SignUpSetUpScreen()),
  );
                    },
                    variant: ButtonVariant.FillWhiteA700,
                    fontStyle: ButtonFontStyle.UrbanistBold14Gray900,
                    alignment: Alignment.center,
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
