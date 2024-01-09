import 'package:dlaeelel23aka/config/route/Routes.dart';
import 'package:dlaeelel23aka/features/LoginScreen/presentation/pages/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _Navigate();
  }

  _Navigate() async {
    await Future.delayed(
      Duration(milliseconds: 1500),
      () {},
    );
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/Dleel.PNG') , fit: BoxFit.fill ))),
    );
  }
}
