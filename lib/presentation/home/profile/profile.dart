import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:belluk_studio/presentation/core/device_screen/dekstop_layout.dart';
import 'package:belluk_studio/presentation/core/device_screen/mobile_layout.dart';
import 'package:belluk_studio/presentation/core/device_screen/tablet_layout.dart';
import 'package:belluk_studio/presentation/core/responsive_layout.dart';
import 'package:belluk_studio/presentation/home/widgets/bottom_navbar.dart';
import 'package:belluk_studio/shared/shared.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resource/resource.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return ResponsiveLayout(
      mobileBody: MobileScaffold(
        scaffold: Scaffold(
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              width: screen.width,
              height: screen.height,
              color: kBgDarkColor,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: kSecondaryColor, width: 5),
                          shape: BoxShape.circle,
                        ),
                        child: CachedNetworkImage(
                          imageUrl: StringX.img,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          placeholder: (context, url) => const Center(
                              child: SpinKitPulse(
                            color: kSecondaryColor,
                          )),
                          errorWidget: (context, url, error) => const Icon(
                            Icons.error,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Text(
                      StringX.hiThere,
                      style: GoogleFonts.montserrat(
                        color: kPrimaryColor,
                        fontSize: 20,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: StringX.iAm,
                            style: GoogleFonts.montserrat(
                                color: kSecondaryColor,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' ${StringX.lukman}',
                            style: GoogleFonts.montserrat(
                                color: kPrimaryColor,
                                fontSize: 35,
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
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomElevationButton(
                      height: 40,
                      width: 160,
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
          ),
        ),
      ),
      tabletBody: TabletScaffold(
        scaffold: Scaffold(
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              width: screen.width,
              height: screen.height,
              color: kBgDarkColor,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: kSecondaryColor, width: 5),
                          shape: BoxShape.circle,
                        ),
                        child: CachedNetworkImage(
                          imageUrl: StringX.img,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          placeholder: (context, url) => const Center(
                              child: SpinKitPulse(
                            color: kSecondaryColor,
                          )),
                          errorWidget: (context, url, error) => const Icon(
                            Icons.error,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
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
                          fontSize: 18,
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
          ),
        ),
      ),
      desktopBody: DekstopScaffold(
        scaffold: Scaffold(
          bottomNavigationBar: BottomNavbar(screen: screen),
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 150),
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
        ),
      ),
    );
  }
}
