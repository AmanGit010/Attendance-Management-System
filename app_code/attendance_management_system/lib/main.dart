import 'package:attendance_management_system/Screens/homeScreen.dart';
import 'package:attendance_management_system/Screens/loginScreen.dart';
import 'package:attendance_management_system/Walkthrough%20Screens/WalkthroughScreen.dart';
import 'package:attendance_management_system/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
        home: const loginScreen(),
        initialRoute: Routes.wts,
        routes: {
          // "/": (context) => const loginScreen(),
          "/home": (context) => const homeScreen(),
          "/wts": (context) => const walkthrough(),
        },
      ),
    );
  }
}
