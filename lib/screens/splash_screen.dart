import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:misflo/screens/home_screen.dart';
import 'package:misflo/utlis/screentools.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _misfloOffset;
  late Animation<Offset> _floOffset;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );

    _misfloOffset = Tween<Offset>(
      begin: Offset(-1.5, -0.5),
      end: Offset(0.38, -0.5),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.0, 0.5, curve: Curves.easeInOut),
    ));

    _floOffset = Tween<Offset>(
      begin: Offset(-2, 0.5),
      end: Offset(-0.58, 0.5),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.5, 1.0, curve: Curves.easeInOut),
    ));

    _controller.forward();

    Timer(Duration(seconds: 2, milliseconds: 500), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: SlideTransition(
              position: _misfloOffset,
              child: Container(
                width: 1000,
                child: Text(
                  'Misflo',
                  softWrap: false,
                  style: GoogleFonts.poppins(
                      fontSize: width(context, 128),
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFB0B0)),
                ),
              ),
            ),
          ),
          Center(
            child: SlideTransition(
              position: _floOffset,
              child: Text(
                'flo',
                style: GoogleFonts.poppins(
                    fontSize: width(context, 128),
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFB0B0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
