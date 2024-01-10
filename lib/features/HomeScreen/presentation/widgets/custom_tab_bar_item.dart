import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTabBarItem extends StatelessWidget {
  const CustomTabBarItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * .5,
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kMainColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
