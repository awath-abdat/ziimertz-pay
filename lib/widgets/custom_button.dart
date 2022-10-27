import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      padding: _setPadding(),
      decoration: _buildDecoration(),
      child: InkWell(
        onTap: onTap,
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      case ButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      default:
        return getPadding(
          all: 15,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillBlack900:
        return ColorConstant.black900;
      case ButtonVariant.FillGray901:
        return ColorConstant.gray901;
      case ButtonVariant.FillGray100:
        return ColorConstant.gray100;
      case ButtonVariant.OutlineGray900:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillAmberA70063:
        return ColorConstant.amberA70063;
      default:
        return ColorConstant.gray900;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray900:
        return Border.all(
          color: ColorConstant.gray900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillGray900:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillBlack900:
      case ButtonVariant.FillGray901:
      case ButtonVariant.FillGray100:
      case ButtonVariant.FillAmberA70063:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder13:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            2.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.UrbanistSemiBold12:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistSemiBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistBold14Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistSemiBold12Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistRegular12:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.PoppinsSemiBold12:
        return TextStyle(
          color: ColorConstant.amberA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder2,
  CircleBorder13,
}
enum ButtonPadding {
  PaddingAll15,
  PaddingAll12,
  PaddingAll6,
}
enum ButtonVariant {
  FillGray900,
  FillWhiteA700,
  FillBlack900,
  FillGray901,
  FillGray100,
  OutlineGray900,
  FillAmberA70063,
}
enum ButtonFontStyle {
  UrbanistBold14,
  UrbanistSemiBold12,
  UrbanistSemiBold16,
  UrbanistBold14Gray900,
  UrbanistSemiBold12Gray900,
  UrbanistRegular12,
  PoppinsSemiBold12,
}
