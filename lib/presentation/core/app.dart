import 'package:belluk_studio/presentation/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Belluk Studio',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
