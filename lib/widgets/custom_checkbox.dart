import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class CustomCheckbox extends StatefulWidget {
  CustomCheckbox(
      {this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.padding,
      this.iconSize,
      this.value,
      this.onChange,
      this.text});

  CheckboxShape? shape;

  CheckboxVariant? variant;

  CheckboxFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? padding;

  double? iconSize;

  bool? value;

  Function(bool)? onChange;

  String? text;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: _buildCheckboxWidget(),
          )
        : _buildCheckboxWidget();
  }

  _buildCheckboxWidget() {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          widget.value = !(widget.value!);
          widget.onChange!(widget.value!);
        },
        child: Row(
          children: [
            SizedBox(
              height: getHorizontalSize(widget.iconSize ?? 0),
              width: getHorizontalSize(widget.iconSize ?? 0),
              child: Checkbox(
                shape: _setShape(),
                value: widget.value ?? false,
                onChanged: (value) {
                  widget.onChange!(value!);
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

  _setOutlineBorderRadius() {
    switch (widget.shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            2.00,
          ),
        );
    }
  }

  _setShape() {
    switch (widget.variant) {
      default:
        return RoundedRectangleBorder(
          side: BorderSide(
            color: ColorConstant.bluegray401,
            width: 1.5,
          ),
          borderRadius: _setOutlineBorderRadius(),
        );
    }
  }

  _setFontStyle() {
    switch (widget.fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum CheckboxShape { RoundedBorder2 }
enum CheckboxVariant { OutlineBluegray401 }
enum CheckboxFontStyle { UrbanistSemiBold12 }
