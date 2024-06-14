import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:misflo/utlis/screentools.dart';
import 'package:intl/intl.dart' show DateFormat;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd MMMM yyyy').format(DateTime.now());

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
                top: height(context, 61),
                left: width(context, 17),
                child: Text(formattedDate,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF6E7C7C),
                    )))
          ],
        ),
      ),
    );
  }
}
