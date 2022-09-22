import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invest/features/screens/Account/account_profile.dart';
import 'package:invest/features/screens/Withdraw/landing.dart';
import 'package:invest/features/screens/Home/home_screen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/bottom-bar';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const Landing(),
    const AccountProfile(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey, width: 0),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _page,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          iconSize: 30,
          onTap: updatePage,
          elevation: 50,
          items: const [
            BottomNavigationBarItem(
              icon: SizedBox(height: 10, child: Icon(Icons.home_outlined)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                  height: 10, child: Icon(Icons.account_balance_outlined)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(height: 10, child: Icon(CupertinoIcons.person)),
              label: '',
            )
          ],
        ),
      ),
    );
  }
}
