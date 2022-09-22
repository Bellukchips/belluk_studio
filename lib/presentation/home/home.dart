import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:belluk_studio/presentation/home/profile/profile.dart';
import 'package:belluk_studio/presentation/home/widgets/menu_drawer.dart';
import 'package:belluk_studio/shared/shared.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //! list menu
  final List<String> menu = [
    "Profile",
    "About",
    "Experience",
    "Portofolio",
    'Contact Us'
  ];
  String selectMenu = "Profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: kPrimaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: kSecondaryColor, width: 5),
                              shape: BoxShape.circle,
                            ),
                            child: CachedNetworkImage(
                              imageUrl: StringX.img,
                              imageBuilder: (context, imageProvider) =>
                                  Container(
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
                          const SizedBox(
                            height: 50,
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText('Software Engineer',
                                  textStyle: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                  cursor: '|'),
                              TyperAnimatedText(
                                'Software Engineer',
                                textStyle: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: generateMenu(context),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 5,
            child: ProfilePage(),
          ),
        ],
      ),
    );
  }

  //? generate list menu
  List<Widget> generateMenu(BuildContext context) {
    return menu
        .map((e) => MenuDrawer(
              icon: e == 'Profile'
                  ? Icons.person
                  : e == 'About'
                      ? Icons.info
                      : e == 'Experience'
                          ? Icons.work_history
                          : e == 'Portofolio'
                              ? Icons.list
                              : Icons.contact_page,
              txt: e,
              onTap: () {
                setState(() {
                  selectMenu = e;
                });
              },
              isSelected: selectMenu == e,
            ))
        .toList();
  }
}
