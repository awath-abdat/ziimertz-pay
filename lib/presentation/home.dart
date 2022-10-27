import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cashcover/presentation/customer_trx_screen/customer_trx_screen.dart';
import 'package:cashcover/presentation/history_screen/history_screen.dart';
import 'package:cashcover/presentation/home_screen/home_screen.dart';
import 'package:cashcover/presentation/profile_screen/profile_screen.dart';

import '../core/app_export.dart';

class Home extends StatefulWidget {
  static String id = "HomeScreen";
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [
    HomeScreen(),
    HistoryScreen(),
    CustomerTrxScreen(),
    ProfileScreen(),
  ];

  int selectedNavBarIndex = 0;

  bool pop = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        selectedItemColor: ColorConstant.black900,
        unselectedItemColor: ColorConstant.bluegray401,
        selectedLabelStyle: TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w900,
        ),
        unselectedLabelStyle: TextStyle(
          // color: ColorConstant.gray600,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        ),
        currentIndex: selectedNavBarIndex,
        onTap: (index) {
          setState(() {
            selectedNavBarIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImageConstant.inActive1,
            ),
            activeIcon: SvgPicture.asset(
              ImageConstant.active1,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                ImageConstant.inActive2,
              ),
              activeIcon: SvgPicture.asset(
                ImageConstant.active2,
              ),
              label: " "),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                ImageConstant.inActive3,
              ),
              activeIcon: SvgPicture.asset(
                ImageConstant.active3,
              ),
              label: " "),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                ImageConstant.inActive4,
              ),
              activeIcon: SvgPicture.asset(ImageConstant.active4),
              label: " "),
        ],
      ),
      body: WillPopScope(
          onWillPop: () async {
            return (await showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: Text(
                            "Are you sure",
                            style:
                                TextStyle(fontSize: 13, fontFamily: "Urbanist"),
                          ),
                          title: Text(
                            "Do you want to exit the app?",
                            style:
                                TextStyle(fontSize: 13, fontFamily: "Urbanist"),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text(
                                "No",
                                style: TextStyle(
                                    color: isDark ? Colors.white : Colors.black,
                                    fontSize: 13,
                                    fontFamily: "Urbanist"),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: Text(
                                "Yes",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 13,
                                    fontFamily: "Urbanist"),
                              ),
                            ),
                          ],
                        ))) ??
                false;
          },
          child: screens[selectedNavBarIndex]),
    );
  }
}
