import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class CustomRadioButton extends StatefulWidget {
  CustomRadioButton(
      {this.padding,
      this.fontStyle,
      this.margin,
      this.onChange,
      this.iconSize,
      this.value,
      this.groupValue,
      this.text});

  RadioPadding? padding;

  RadioFontStyle? fontStyle;

  EdgeInsetsGeometry? margin;

  Function(String)? onChange;

  double? iconSize;

  String? value;

  String? groupValue;

  String? text;

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          widget.onChange!(widget.value!);
        },
        child: Row(
          children: [
            SizedBox(
              height: getHorizontalSize(widget.iconSize ?? 0),
              width: getHorizontalSize(widget.iconSize ?? 0),
              child: Radio<String>(
                value: widget.value ?? "",
                groupValue: widget.groupValue,
                onChanged: (value) {
                  widget.onChange!(value!);
                  setState(() {
                    
                  });
                },
              ),
            ),
            Padding(
              padding: getPadding(
                left: 10,
              ),
              child: Text(
                widget.text ?? "",
                textAlign: TextAlign.center,
                style: _setFontStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (widget.fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );

    }
  }
}

enum RadioPadding {
  PaddingAll3,
}
enum RadioFontStyle {
  UrbanistBold14,
}
