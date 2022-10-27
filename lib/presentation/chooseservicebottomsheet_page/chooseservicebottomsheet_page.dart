import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ChooseservicebottomsheetPage extends StatefulWidget {
  @override
  State<ChooseservicebottomsheetPage> createState() => _ChooseservicebottomsheetPageState();
}

class _ChooseservicebottomsheetPageState extends State<ChooseservicebottomsheetPage> {
  int radioGroup=-1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(
              5.00,
            ),
            width: getHorizontalSize(
              56.00,
            ),
            margin: getMargin(
              left: 20,
              top: 16,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.bluegray51,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  2.50,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 24,
              right: 20,
            ),
            child: Text(
              "Choose Service",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.gray900,
                fontSize: getFontSize(
                  20,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
                height: 1.40,
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              333.00,
            ),
            margin: getMargin(
              left: 20,
              top: 15,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.bluegray52,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 0,
                top: 16,
                right: 0,
              ),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: servicesList.length,
                itemBuilder: (context, index) {
                  return  InkWell(
                    onTap: (){
                      setState(() {
                        radioGroup=index;
                      });
                    },
                    child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 20,
                                  top: 10,
                                  bottom: 10,
                                  right: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomIconButton(
                          height: 56,
                          width: 56,
                          child: CommonImageView(
                            svgPath: servicesList[index].image,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 14,
                            right: 14,
                            top: 20,
                            bottom: 20,
                          ),
                          child: Text(
                            servicesList[index].title,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
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
                                 Theme(
                                  data: Theme.of(context).copyWith(
                            unselectedWidgetColor: ColorConstant.bluegray401,
                            // disabledColor: Colors.blue
                            ),
                                  child: Transform.scale(
                     scale: 1.2,
                    child: Radio(
                                                  value: index,
                                                  activeColor: ColorConstant.black900,
                                                  groupValue: radioGroup,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      radioGroup =value as int;
                                                      
                                                    });
                                                  },
                                                ),
                                  )),
                                 
                                 
                                 
                                  ],
                                ),
                              ),
                            ),
                  );
         
                },
              ),
          
          
            ),
          ),
         
       
       
       
        ],
      ),
    );
  
  
  
  
  }
List<Services> servicesList=[
  Services("Pulse", ImageConstant.pulse),
  Services("Internet", ImageConstant.internet),
  Services("Phone", ImageConstant.imgGroup251),
  Services("Electricity", ImageConstant.imgGroup25Gray900),
  Services("Water", ImageConstant.water),


];

}

class Services {
  String title;
  String image;
  Services(
    this.title, this.image
  );
}
