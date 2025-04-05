import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game_tourney/Screens/AuthScreens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
       minTextAdapt: true,
       splitScreenMode: true,
       builder:  (context, child) {
         return MaterialApp(
           title: 'Flutter Demo',
           theme: ThemeData(
             colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
           ),
           home: LoginPage(),
         );
       },
    );
  }
}