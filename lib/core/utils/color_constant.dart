import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray52 = fromHex('#e9ecf0');

  static Color whiteA7007f = fromHex('#7fffffff');

  static Color whiteA700B2 = fromHex('#b2ffffff');

  static Color bluegray51 = fromHex('#e9ecf2');

  static Color bluegray50 = fromHex('#eceef1');

  static Color red601 = fromHex('#d83b3b');

  static Color red600 = fromHex('#ec2828');

  static Color bluegray1003f = fromHex('#3fcbcbd1');

  static Color blueA200 = fromHex('#3784fa');

  static Color red400 = fromHex('#e94646');

  static Color black9003f = fromHex('#3f000000');

  static Color black90000 = fromHex('#00000000');

  static Color amberA700 = fromHex('#f8a70a');

  static Color whiteA70019 = fromHex('#19ffffff');

  static Color redA700 = fromHex('#d80027');

  static Color gray600 = fromHex('#737580');

  static Color whiteA7004c = fromHex('#4cffffff');

  static Color gray601 = fromHex('#7e8088');

  static Color gray202 = fromHex('#e7e8eb');

  static Color gray203 = fromHex('#e6e9ec');

  static Color gray200 = fromHex('#e6e7e8');

  static Color gray201 = fromHex('#e5e7eb');

  static Color cyan200 = fromHex('#89eaea');

  static Color bluegray800 = fromHex('#2b3352');

  static Color whiteA70066 = fromHex('#66ffffff');

  static Color bluegray403 = fromHex('#7a869a');

  static Color whiteA70063 = fromHex('#63ffffff');

  static Color bluegray402 = fromHex('#7e8ba0');

  static Color bluegray401 = fromHex('#808d9e');

  static Color bluegray400 = fromHex('#7e8ca0');

  static Color bluegray200 = fromHex('#afb2be');

  static Color whiteA700 = fromHex('#ffffff');

  static Color bluegray54 = fromHex('#edf0f7');

  static Color bluegray53 = fromHex('#ebecf0');

  static Color gray52 = fromHex('#f8f8f8');

  static Color gray51 = fromHex('#f6f7fa');

  static Color gray90075 = fromHex('#75111827');

  static Color gray5003f = fromHex('#3f9da0a8');

  static Color indigoA200 = fromHex('#546ef9');

  static Color limeA100 = fromHex('#f3f580');

  static Color amberA70063 = fromHex('#63f8a70a');

  static Color green600 = fromHex('#24aa49');

  static Color gray50 = fromHex('#f9f9f9');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color black900 = fromHex('#000000');

  static Color bluegray10077 = fromHex('#77caced6');

  static Color gray905 = fromHex('#111827');

  static Color bluegray5090 = fromHex('#90e9ecf2');

  static Color gray904 = fromHex('#181926');

  static Color gray40077 = fromHex('#77babcc2');

  static Color yellow100 = fromHex('#fdffc6');

  static Color gray105 = fromHex('#f0f5f8');

  static Color gray301 = fromHex('#dadbde');

  static Color gray103 = fromHex('#f3f4f6');

  static Color gray302 = fromHex('#dbdbdb');

  static Color gray104 = fromHex('#f4f4f6');

  static Color gray901 = fromHex('#242424');

  static Color indigo52 = fromHex('#e3e5ee');

  static Color indigo50 = fromHex('#e2e8f0');

  static Color gray900 = fromHex('#1d1d25');

  static Color indigo51 = fromHex('#e6e9ed');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color gray101 = fromHex('#f4f5f7');

  static Color gray300 = fromHex('#dadcde');

  static Color gray102 = fromHex('#f2f2f2');

  static Color gray100 = fromHex('#f7f7f7');

  static Color bluegray900 = fromHex('#303136');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color indigo100 = fromHex('#bcc6d6');

  static Color bluegray700 = fromHex('#4f5057');

  static Color bluegray300 = fromHex('#9ca3af');

  static Color bluegray904 = fromHex('#162b4d');

  static Color bluegray903 = fromHex('#252730');

  static Color bluegray902 = fromHex('#232a41');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
