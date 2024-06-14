import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:misflo/screens/splash_screen.dart';
import 'package:misflo/utlis/screentools.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
