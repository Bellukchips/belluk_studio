import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
    required this.screen,
  }) : super(key: key);

  final Size screen;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: screen.width,
      color: Colors.white,
      child: Center(
        child: Text(
          'Copyright © @bellukstudio ',
          style: GoogleFonts.dancingScript(
              fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }
}
