import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bottom_navigation_bar_view1.dart';
import '../widgets/bottom_navigation_bar_view2.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

PageController pageController = PageController(initialPage: 0);

class _HomeViewState extends State<HomeView> {
  int currentView = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentView = index;
          });
        },
        children: const [
          BottomNavigationBarView1(),
          BottomNavigationBarView2(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: currentView,
        onTap: (index) {
          setState(() {
            currentView = index;
            pageController.animateToPage(currentView,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          });
        },
        height: 50,
        buttonBackgroundColor: kMainColor,
        backgroundColor: Colors.transparent,
        color: kMainColor,
        animationDuration: const Duration(milliseconds: 300),
        items: List.generate(
          kListIcons.length,
          (index) => Icon(
            kListIcons[index],
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
