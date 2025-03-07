import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoPageView extends StatelessWidget {
  const NoPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          '404 - No Page Found',
          style: GoogleFonts.montserratAlternates(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
