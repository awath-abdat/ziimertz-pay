import 'package:flutter/material.dart';
import 'package:cashcover/presentation/home_screen/widgets/spacing.dart';
import 'package:cashcover/presentation/pulse_confirm_screen/pulse_confirm_screen.dart';
import '../../core/app_export.dart';

class PulseScreen extends StatefulWidget {
  const PulseScreen({Key? key}) : super(key: key);

  @override
  State<PulseScreen> createState() => _PulseScreenState();
}

class _PulseScreenState extends State<PulseScreen> {
  int selectedAmountIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: 
        Container(
         width: getHorizontalSize(330),
            height: getVerticalSize(50),
        child: FloatingActionButton.extended(
          elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(getHorizontalSize(5))
                  ),
                  backgroundColor: ColorConstant.black900,
                  foregroundColor: ColorConstant.whiteA700,
                  extendedTextStyle: TextStyle(
                    color: ColorConstant.gray50,
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.07,
                  ),
      
                  onPressed: (){
                   Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>PulseConfirmScreen()),
  );
                  },
                  label:Text('Continue')),
      ),
       
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: getPadding(
                left: 20,right: 20,
                bottom: 85,
                top: 24
                ),
                
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: getVerticalSize(
                    126.5,
                  ),
                  crossAxisCount: 2,
                  mainAxisSpacing: getHorizontalSize(
                    16.00,
                  ),
                  crossAxisSpacing: getHorizontalSize(
                    16.00,
                  ),
                ),
                // physics: NeverScrollableScrollPhysics(),
                itemCount: amountsList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      setState(() {
                        selectedAmountIndex=index;
                      });
                    },
                    child: Container(
                      width: 155,
                      height: 104,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: selectedAmountIndex==index?Colors.black:ColorConstant.gray100,
                      
                     ),
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("${Constants.currency}${amountsList[index].amount} ",
                        style: TextStyle(
                          color: selectedAmountIndex==index?
                          Colors.white:ColorConstant.black900,
                          fontSize: getFontSize(20),
                          fontWeight: FontWeight.w700
                        ),),
                      VerticalSpace(height: 8),
                      Text("Price: ${Constants.currency}${amountsList[index].price}",
                        style: TextStyle(
                          color:ColorConstant.bluegray401,
                          fontSize: getFontSize(14),
                          fontWeight: FontWeight.w400
                        ),),
                      
                      
                      ],
                     ),
                    ),
                  );
                },
              ),
            ),
        
         
          ],
        ),
      ),
    );
  }
  List<Amounts> amountsList=[
    Amounts(amount: "15.000", price: "14.000"),
    Amounts(amount: "20.000", price: "15.000"),
    Amounts(amount: "25.000", price: "20.000"),
    Amounts(amount: "50.000", price: "45.000"),
    Amounts(amount: "75.000", price: "70.000"),
    Amounts(amount: "100.000", price: "95.000")

  ];
}

class Amounts {
  String amount;
  String price;

  Amounts({required this.amount,required this.price});
}
