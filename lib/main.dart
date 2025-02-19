import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_rent/feature/launch/presentations/drawer/presentation/page/custom_drawer_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white
      ),
      home: CustomDrawerScreen()
    );
  }
}


