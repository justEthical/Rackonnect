import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/Screens/Home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff1235B0)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

