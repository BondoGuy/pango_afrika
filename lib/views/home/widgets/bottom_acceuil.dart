// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pango_afrika/views/home/home.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../utils/colors.dart';
//import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  //int _seletectedIndex = 0;
  late PersistentTabController _controller;

  // List pages = [
  //   MainFoodPage(),
  //   Container(
  //     child: Center(
  //       child: Text("En cours"),
  //     ),
  //   ),
  //   Container(
  //     child: Center(
  //       child: Text("En cours"),
  //     ),
  //   ),
  //   Container(
  //     child: Center(
  //       child: Text("En cours"),
  //     ),
  //   ),
  // ];

  // void onTapNav(int index) {
  //   setState(() {
  //     _seletectedIndex = index;
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      Container(
        child: Center(
          child: Text("Categories"),
        ),
      ),
      Container(
        child: Center(
          child: Text("Boutiques"),
        ),
      ),
      Container(
        child: Center(
          child: Text("Profil"),
        ),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Acceuil"),
        //activeColorPrimary: CupertinoColors.activeBlue,
        activeColorPrimary: AppColors.greenColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.app_badge),
        title: ("Boutiques"),
        activeColorPrimary: AppColors.greenColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.shopping_cart),
        title: ("Panier"),
        activeColorPrimary: AppColors.greenColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        title: ("Profil"),
        activeColorPrimary: AppColors.greenColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: pages[_seletectedIndex],
  //     bottomNavigationBar: BottomNavigationBar(
  //       selectedItemColor: AppColors.mainColor,
  //       unselectedItemColor: AppColors.mainsColor,
  //       showSelectedLabels: false,
  //       showUnselectedLabels: false,
  //       currentIndex: _seletectedIndex,
  //       selectedFontSize: 0.0,
  //       unselectedFontSize: 0.1,
  //       onTap: onTapNav,
  //       items: const [
  //         BottomNavigationBarItem(
  //           icon: Icon(
  //             Icons.home_max,
  //           ),
  //           label: "Discover",
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(CupertinoIcons.home
  //               // Icons.archive,
  //               ),
  //           label: "History",
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(
  //             Icons.shopping_cart,
  //           ),
  //           label: "Cart",
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(
  //             Icons.person,
  //           ),
  //           label: "Account",
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
      true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
      true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Theme.of(context).cardColor,
        boxShadow: [BoxShadow(
          color: Colors.grey[500]!,
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(
            1, 1,), // changes position of shadow
        ),],
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
      NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
