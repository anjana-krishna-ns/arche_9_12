import 'package:flutter/material.dart';
import 'package:slacks_test/newarch/screens/home%20page/banner.dart';
import 'package:slacks_test/newarch/screens/home%20page/grid.dart';
class HomeState extends StatefulWidget {
  const HomeState({Key? key}) : super(key: key);

  @override
  State<HomeState> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  late PageController _pageController;
  int _selectedPage = 0;

  List<Widget> pages = [
    GriD(),
    Banner1()
  ];  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) => setState(() { _selectedPage = index; }),
        controller: _pageController,
        children: [
          ...pages
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: _buildThreeItems(),

        fixedColor: Theme.of(context).primaryColor,

      ),

    );

  }


  List<Widget> _buildThreePageViewChildren() {

    return <Widget>[

      Container(color: Colors.red),

      Container(color: Colors.blue),

      Container(color: Colors.green),

    ];

  }


  List<BottomNavigationBarItem> _buildThreeItems() {

    return const <BottomNavigationBarItem>[

      BottomNavigationBarItem(

        icon: Icon(Icons.home),

        label: 'Home',

      ),

      BottomNavigationBarItem(

        icon: Icon(Icons.search_rounded),

        label: 'Search',

      ),

      BottomNavigationBarItem(

        icon: Icon(Icons.account_box_outlined),

        label: 'Profile',

      ),

    ];

  }

}
