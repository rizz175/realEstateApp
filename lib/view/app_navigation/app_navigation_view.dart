import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/view/home/view/home_view.dart';
import 'package:realestate/view/search/view/search_view.dart';

import '../../core/widgets/custom_nav_bar.dart';

class AppNavigationView extends StatefulWidget {
  const AppNavigationView({super.key});

  @override
  State<AppNavigationView> createState() => _AppNavigationViewState();
}

class _AppNavigationViewState extends State<AppNavigationView> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> screens = [
    SearchView(),
    Container(),
    const HomeView(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
