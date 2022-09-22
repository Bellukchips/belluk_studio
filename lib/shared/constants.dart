import 'package:flutter/material.dart';

const kPrimaryColor = Color.fromARGB(255, 45, 67, 121);
const kSecondaryColor = Color.fromARGB(255, 85, 94, 145);
const kBgLightColor = Color(0xFFF2F4FC);
const kBgDarkColor = Color(0xFFEBEDFA);
const kBadgeColor = Color(0xFFEE376E);
const kGrayColor = Color(0xFF8793B2);
const kTitleTextColor = Color(0xFF30384D);
const kTextColor = Color(0xFF4D5875);

class ImageAssets {
  static String imgPath = 'assets/img/';
  static String me = 'photo.jpeg';
  static String formal = 'foto.jpg';

  static String get(String path) => '$imgPath$path';
}
