import 'package:belluk_studio/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuDrawer extends StatefulWidget {
  final String txt;
  final VoidCallback onTap;
  final bool isSelected;
  final IconData icon;
  const MenuDrawer({
    Key? key,
    required this.txt,
    required this.onTap,
    required this.isSelected,
    required this.icon,
  }) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      width: widget.isSelected ? 200 : 150,
      height: widget.isSelected ? 60 : 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: kSecondaryColor),
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              kSecondaryColor,
            ),
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))))),
        onHover: (value) {},
        onPressed: () {
          widget.onTap();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              widget.txt,
              style: GoogleFonts.roboto(
                  fontSize: widget.isSelected ? 17 : 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
