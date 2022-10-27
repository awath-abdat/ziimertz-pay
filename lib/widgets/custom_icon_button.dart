import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll20:
        return getPadding(
          all: 20,
        );
      case IconButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      case IconButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case IconButtonPadding.PaddingAll29:
        return getPadding(
          all: 29,
        );
      default:
        return getPadding(
          all: 15,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineWhiteA700:
        return ColorConstant.bluegray200;
      case IconButtonVariant.FillBluegray200:
        return ColorConstant.bluegray200;
      case IconButtonVariant.FillGray50:
        return ColorConstant.gray50;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineBluegray10077:
        return ColorConstant.bluegray401;
      case IconButtonVariant.FillWhiteA70066:
        return ColorConstant.whiteA70066;
      default:
        return ColorConstant.gray100;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineWhiteA700:
        return Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillGray100:
      case IconButtonVariant.FillBluegray200:
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.OutlineBluegray10077:
      case IconButtonVariant.FillWhiteA70066:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder9:
        return BorderRadius.circular(
          getHorizontalSize(
            9.00,
          ),
        );
      case IconButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case IconButtonShape.CircleBorder18:
        return BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        );
      case IconButtonShape.CircleBorder40:
        return BorderRadius.circular(
          getHorizontalSize(
            40.00,
          ),
        );
      case IconButtonShape.CircleBorder14:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
      case IconButtonShape.RoundedBorder2:
        return BorderRadius.circular(
          getHorizontalSize(
            2.00,
          ),
        );
      case IconButtonShape.CircleBorder21:
        return BorderRadius.circular(
          getHorizontalSize(
            500.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBluegray10077:
        return [
          BoxShadow(
            color: ColorConstant.bluegray10077,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              10,
            ),
          )
        ];
      case IconButtonVariant.FillGray100:
      case IconButtonVariant.OutlineWhiteA700:
      case IconButtonVariant.FillBluegray200:
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillWhiteA70066:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  CircleBorder28,
  CircleBorder9,
  CircleBorder24,
  CircleBorder18,
  CircleBorder40,
  CircleBorder14,
  RoundedBorder2,
  CircleBorder21,
}
enum IconButtonPadding {
  PaddingAll15,
  PaddingAll20,
  PaddingAll4,
  PaddingAll10,
  PaddingAll29,
}
enum IconButtonVariant {
  FillGray100,
  OutlineWhiteA700,
  FillBluegray200,
  FillGray50,
  FillWhiteA700,
  OutlineBluegray10077,
  FillWhiteA70066,
}
