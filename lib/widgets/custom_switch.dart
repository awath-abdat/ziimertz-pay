import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class CustomSwitch extends StatefulWidget {
  CustomSwitch({this.alignment, this.padding, this.value, this.onChanged,this.isBlue=false});

  Alignment? alignment;

  EdgeInsetsGeometry? padding;
  bool isBlue;

  bool? value;

  Function(bool)? onChanged;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  

  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: widget.value ?? false,
        height: getHorizontalSize(24),
        width: getHorizontalSize(40),
        toggleSize: 20,
        borderRadius: getHorizontalSize(
          12.00,
        ),
        activeColor:widget.isBlue?ColorConstant.blueA200: ColorConstant.black900,
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor: ColorConstant.bluegray200,
        inactiveToggleColor: ColorConstant.whiteA700,
      
        onToggle: (value) {
           setState(() {
                                  widget.value = value;
                                });
        },
      ),
    );
  }
}
