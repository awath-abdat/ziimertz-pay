import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class HorizontalSpace extends StatelessWidget {
  double width;
  HorizontalSpace(
    {
      required this.width
    }
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(width),
    );
  }
}



// ignore: must_be_immutable
class VerticalSpace extends StatelessWidget {
  double height;
  VerticalSpace(
    {
      required this.height
    }
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(height),
    );
  }
}



