import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/SplashScreen.dart';
import 'package:nike/cons/clr_cons.dart';
// ignore: unused_import
import 'package:nike/screens/OboardScreen/on_board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "Raleway",
          colorScheme: ColorScheme.fromSeed(seedColor: btncolor),
          useMaterial3: true,
        ),
        home: const Splashscreen(),
      ),
    );
  }
}
