import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';

// ignore: must_be_immutable
class Listoval4ItemWidget extends StatefulWidget {
  int index;
  Listoval4ItemWidget({required this.index});

  @override
  State<Listoval4ItemWidget> createState() => _Listoval4ItemWidgetState();
}

class _Listoval4ItemWidgetState extends State<Listoval4ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: () {
          setState(() {});
        },
        child: Padding(
          padding: getPadding(
            top: 10.0,
            right: 35,
            bottom: 10.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    21.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgOval8,
                  height: getSize(
                    42.00,
                  ),
                  width: getSize(
                    42.00,
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 16,
                  right: 16,
                  top: 3,
                  bottom: 1,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          right: 1,
                        ),
                        child: Text(
                          "Kathryn Murphy",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
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
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        "kathryn@gmail.com",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.bluegray402,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
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
    );
  }
}
