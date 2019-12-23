import 'package:flutter/material.dart';
import './model/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

// Colors
class ThemeColors {
  static const Color mainRed = Color(0xfff95149);

  static const Color complementaryBlue = Color(0xFF00CCF3);
  static const Color highlightedBlue = Color(0xFFD8FAFF);

  static const Color analogousOrange = Color.fromARGB(255, 254, 170, 44);
  static const Color highlightedOrange = Color(0xFFFFF3E0);
  static const Color analogousMagenta = Color(0xFFFE2C80);
  static const Color highlightedMagenta = Color(0xFFFFE4ED);

  static const Color WhiteGrey = Color.fromARGB(255, 247, 247, 247);
  static const Color TransparentWhiteGrey = Color.fromARGB(0, 247, 247, 247);
  static const Color lightGrey = Color(0xfff0f0f0);
  static const Color mediumGrey = Color(0xff9c9c9c);
  static const Color darkGrey = Color(0xff606060);

  static const Color gradientPureOrange = Color(0xFFFFAD2C);
  static const Color gradientSemiOrange = Color(0xFFFC743F);
  static const Color gradientOrange = Color(0xFFFB6145);
  static const Color gradientRed = Color(0xFFFB4F4F);
  static const Color gradientMagenta = Color(0xFFFC455C);
  static const Color gradientSemiMagenta = Color(0xFFFC4260);
  static const Color gradientPureMagenta = Color(0xFFFF2C7C);
}

class ShadowColors {
  static const Color VeryLightShadow = Color.fromARGB(10, 0, 0, 0);
  static const Color LightShadow = Color.fromARGB(30, 0, 0, 0);
  static const Color MediumShadow = Color.fromARGB(60, 0, 0, 0);
  static const Color RegularShadow = Color.fromARGB(130, 0, 0, 0);

  static const Color RedShadow = Color(0xCCf95149);

  static const Color facebookShadow = Color(0xCC3B5998);
}

class ColorsSocial {
  static const Color facebook = Color(0xFF3B5998);
}