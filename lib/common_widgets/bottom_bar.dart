import 'package:assignment_1/features/screens/courses.dart';
import 'package:assignment_1/features/screens/home.dart';
import 'package:assignment_1/features/screens/my_profile.dart';
import 'package:assignment_1/features/screens/trending.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global_variales.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  List<Widget> pages = [
    // total 4 pages in bottom bar
    const Home(),
    const Courses(),
    const Trending(),
    const MyProfile(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final userCartLen = context.watch<UserProvider>().user.cart.length;

    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.backgroundColor,
        iconSize: 20,
        onTap: updatePage,
        items: [
          // HOME
          BottomNavigationBarItem(
            icon: Container(
              child: const Icon(
                Icons.home_outlined,
              ),
            ),
            label: '',
          ),
          // ACCOUNT
          BottomNavigationBarItem(
            icon: Container(
              child: const Icon(
                Icons.library_books,
              ),
            ),
            label: '',
          ),
          // CART
          BottomNavigationBarItem(
            icon: Container(
              child: const Icon(
                Icons.explore_sharp,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: const Icon(Icons.account_circle_rounded),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
