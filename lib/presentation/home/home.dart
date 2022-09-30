import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:belluk_studio/presentation/core/device_screen/dekstop_layout.dart';
import 'package:belluk_studio/presentation/core/device_screen/mobile_layout.dart';
import 'package:belluk_studio/presentation/core/device_screen/tablet_layout.dart';
import 'package:belluk_studio/presentation/core/responsive_layout.dart';
import 'package:belluk_studio/presentation/home/profile/profile.dart';
import 'package:belluk_studio/presentation/home/widgets/menu_drawer.dart';
import 'package:belluk_studio/shared/shared.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

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
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileBody: MobileScaffold(
          scaffold: Scaffold(
            body: _currentIndex == 0
                ? const ProfilePage()
                : _currentIndex == 1
                    ? Container()
                    : _currentIndex == 2
                        ? Container()
                        : _currentIndex == 3
                            ? Container()
                            : Container(),
            bottomNavigationBar: SalomonBottomBar(
              curve: Curves.easeInOutQuart,
              currentIndex: _currentIndex,
              onTap: (i) {
                setState(() {
                  _currentIndex = i;
                });
              },
              items: [
                /// profile
                SalomonBottomBarItem(
                  icon: const Icon(Icons.person),
                  title: const Text("Profile"),
                  unselectedColor: kSecondaryColor,
                  selectedColor: kPrimaryColor,
                ),

                /// about
                SalomonBottomBarItem(
                  icon: const Icon(Icons.info),
                  title: const Text("About"),
                  unselectedColor: kSecondaryColor,
                  selectedColor: kPrimaryColor,
                ),

                /// experience
                SalomonBottomBarItem(
                  icon: const Icon(Icons.work_history),
                  title: const Text("Experience"),
                  unselectedColor: kSecondaryColor,
                  selectedColor: kPrimaryColor,
                ),

                /// portofolio
                SalomonBottomBarItem(
                  icon: const Icon(Icons.list),
                  title: const Text("Portofolio"),
                  unselectedColor: kSecondaryColor,
                  selectedColor: kPrimaryColor,
                ),

                /// contact us
                SalomonBottomBarItem(
                  icon: const Icon(Icons.contact_page),
                  title: const Text("Contact Us"),
                  unselectedColor: kSecondaryColor,
                  selectedColor: kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
        tabletBody: TabletScaffold(
          scaffold: Scaffold(
            body: _currentIndex == 0
                ? const ProfilePage()
                : _currentIndex == 1
                    ? Container()
                    : _currentIndex == 2
                        ? Container()
                        : _currentIndex == 3
                            ? Container()
                            : Container(),
            bottomNavigationBar: SalomonBottomBar(
              curve: Curves.easeInOutQuart,
              currentIndex: _currentIndex,
              onTap: (i) {
                setState(() {
                  _currentIndex = i;
                });
              },
              items: [
                /// profile
                SalomonBottomBarItem(
                  icon: const Icon(Icons.person),
                  title: const Text("Profile"),
                  unselectedColor: kSecondaryColor,
                  selectedColor: kPrimaryColor,
                ),

                /// about
                SalomonBottomBarItem(
                  icon: const Icon(Icons.info),
                  title: const Text("About"),
                  unselectedColor: kSecondaryColor,
                  selectedColor: kPrimaryColor,
                ),

                /// experience
                SalomonBottomBarItem(
                  icon: const Icon(Icons.work_history),
                  title: const Text("Experience"),
                  unselectedColor: kSecondaryColor,
                  selectedColor: kPrimaryColor,
                ),

                /// portofolio
                SalomonBottomBarItem(
                  icon: const Icon(Icons.list),
                  title: const Text("Portofolio"),
                  unselectedColor: kSecondaryColor,
                  selectedColor: kPrimaryColor,
                ),

                /// contact us
                SalomonBottomBarItem(
                  icon: const Icon(Icons.contact_page),
                  title: const Text("Contact Us"),
                  unselectedColor: kSecondaryColor,
                  selectedColor: kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
        desktopBody: DekstopScaffold(
            scaffold: Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  color: kPrimaryColor,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: generateMenu(context),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: selectMenu == 'Profile'
                    ? const ProfilePage()
                    : selectMenu == 'About'
                        ? Container()
                        : selectMenu == 'Experience'
                            ? Container()
                            : selectMenu == 'Portofolio'
                                ? Container()
                                : Container(),
              ),
            ],
          ),
        )));
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
