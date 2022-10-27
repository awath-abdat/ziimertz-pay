import '../pulse_nominal_page/widgets/priceoptions_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class PulseNominalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 4,
                right: 4,
              ),
              child: StaggeredGridView.countBuilder(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 4,
                crossAxisSpacing: getHorizontalSize(
                  16.00,
                ),
                mainAxisSpacing: getHorizontalSize(
                  16.00,
                ),
                staggeredTileBuilder: (index) {
                  return StaggeredTile.fit(2);
                },
                itemCount: 6,
                itemBuilder: (context, index) {
                  return PriceoptionsItemWidget();
                },
              ),
            ),
            CustomButton(
              width: 335,
              text: "Continue",
              margin: getMargin(
                top: 105,
              ),
              variant: ButtonVariant.FillGray901,
            ),
          ],
        ),
      ),
    );
  }
}
