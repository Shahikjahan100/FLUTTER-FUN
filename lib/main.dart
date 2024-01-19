import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hiking/HomePage.dart';
import 'package:hiking/profile.dart';
import 'package:hiking/saved.dart';
//import 'package:hiking/AuthenticationPage.dart';
//import 'package:hiking/HomePage.dart';
//import 'package:hiking/saved.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}
