import 'package:flutter/material.dart';

import '../constants.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: kMainColor, borderRadius: BorderRadius.circular(5)),
          child: Icon(
            icon,
            size: 50,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: kMainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
