import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:belluk_studio/presentation/home/widgets/bottom_navbar.dart';
import 'package:belluk_studio/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resource/resource.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavbar(screen: screen),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 300),
          width: screen.width,
          height: screen.height,
          color: kBgDarkColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringX.hiThere,
                style: GoogleFonts.montserrat(
                  color: kPrimaryColor,
                  fontSize: 30,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: StringX.iAm,
                      style: GoogleFonts.montserrat(
                          color: kSecondaryColor,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' ${StringX.lukman}',
                      style: GoogleFonts.montserrat(
                          color: kPrimaryColor,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                      'Waktu yang kamu nikmati untuk dihabiskan meraih impian'),
                  TyperAnimatedText(
                      'bukanlah waktu yang terbuang.  - Marthe Troly-Curtin'),
                ],
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                StringX.intro,
                style: GoogleFonts.montserrat(
                    color: kPrimaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomElevationButton(
                height: 50,
                width: 200,
                color: kPrimaryColor,
                onTap: () {},
                text: StringX.followMe,
                withIcon: true,
                style: GoogleFonts.montserrat(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
