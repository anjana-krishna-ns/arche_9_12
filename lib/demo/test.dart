import 'package:flutter/material.dart';
import 'package:moony_nav_bar/moony_nav_bar.dart';
// import 'package:moony_nav_bar_example/screen.dart';
import 'package:slacks_test/newarch/screens/home%20page/banner.dart';
import 'package:slacks_test/newarch/screens/home%20page/grid.dart';
class Testt extends StatefulWidget {
  const Testt({Key? key}) : super(key: key);

  @override
  State<Testt> createState() => _TesttState();
}

class _TesttState extends State<Testt> {
  Widget _screen1 = Banner1();
  Widget _screen2 = Banner1();
  Widget _screen3 = GriD();
  Widget _screen4 = Banner1();
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: getBody(),
        bottomNavigationBar: MoonyNavigationBar(
          items: <NavigationBarItem>[
            NavigationBarItem(
                icon: Icons.home_rounded,
                onTap: () {
                  onTapHandler(0);
                }),
            NavigationBarItem(
                icon: Icons.category_outlined,
                activeIcon: Icons.category,
                onTap: () {
                  onTapHandler(1);
                }),

            NavigationBarItem(
                icon: Icons.person_outline,
                activeIcon: Icons.person,
                onTap: () {
                  onTapHandler(3);
                }),
       NavigationBarItem(
            icon: Icons.shopping_cart_outlined,
            activeIcon: Icons.shopping_cart,
            onTap: () {
              onTapHandler(2);
            }),
          ],
          style: MoonyNavStyle(
            activeColor: Theme.of(context).primaryColor,
            indicatorPosition: IndicatorPosition.TOP,
            indicatorType: IndicatorType.POINT,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    if (this.selectedIndex == 0) {
      return this._screen1;
    } else if (this.selectedIndex == 1) {
      return this._screen2;
    } else if (this.selectedIndex == 2) {
      return this._screen3;
    }
    return this._screen4;
  }

  void onTapHandler(int index) {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}
