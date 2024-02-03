import 'package:filimo/data/color.dart';
import 'package:filimo/data/data.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Scaffold(
      body: PersistentTabView(
        decoration: NavBarDecoration(),
        context,
        screens: screens(),
        items: navItems(),
        backgroundColor: scaffoldColor,
        navBarStyle: NavBarStyle.style11,
        navBarHeight: size.height*.09,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(microseconds: 3000),
          curve: Curves.linear
        ),
      ),
    );
  }
}
