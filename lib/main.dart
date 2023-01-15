import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:sgconnectest/onboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        home: OnboardScreem()
    );
  }
}
