import 'package:dlaeelel23aka/config/route/Routes.dart';
import 'package:dlaeelel23aka/core/utils/AppStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
        designSize: Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesNames.splash,
          onGenerateRoute: (settings) => AppRouter.onGenerate(settings),
          theme: AppStyles.themeData,
        ),
      ),
    );
  }
}
