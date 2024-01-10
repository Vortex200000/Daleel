import 'package:flutter/material.dart';

import '../constants.dart';
import '../views/home_view.dart';
import 'custom_list_view.dart';
import 'custom_tab_bar_item.dart';

class BottomNavigationBarView2 extends StatefulWidget {
  const BottomNavigationBarView2({super.key});

  @override
  State<BottomNavigationBarView2> createState() =>
      _BottomNavigationBarView2State();
}

class _BottomNavigationBarView2State extends State<BottomNavigationBarView2>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: kBackgroundColor,
        bottom: TabBar(

          indicatorColor: kMainColor,
          indicatorWeight: 8,
          dividerColor: Colors.transparent,
          tabs: const [
            CustomTabBarItem(
              text: 'Products',
            ),
            CustomTabBarItem(
              text: 'Services',
            ),
          ],
          controller: tabController,
        ),
      ),
      body: NotificationListener(
        onNotification: (notification) {
          if (notification is OverscrollNotification) {
            if (notification.overscroll < 0) {
              pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            } else {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            }
          }
          return true;
        },
        child: TabBarView(
          physics: BouncingScrollPhysics(),
          controller: tabController,
          // physics: NeverScrollableScrollPhysics(),
          children: [
            CustomListView(list: kListProducts),
            CustomListView(list: kListServices),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (tabController.index == 0) {
            } else {}
          },
          backgroundColor: kMainColor,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
