import 'package:flutter/material.dart';

import 'icon_with_text.dart';

class BottomNavigationBarView1 extends StatelessWidget {
  const BottomNavigationBarView1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconWithText(icon: Icons.phone_outlined, text: "Call an Agent"),
          SizedBox(height: 50),
          IconWithText(
              icon: Icons.chat_outlined, text: "Live chat with an Agent"),
          SizedBox(height: 50),
          IconWithText(icon: Icons.email_outlined, text: "Text an Agent"),
        ],
      ),
    );
  }
}
