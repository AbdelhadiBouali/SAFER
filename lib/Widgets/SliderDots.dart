import 'package:flutter/material.dart';
import '../main.dart';

class SliderDots extends StatelessWidget {
  bool isActive;
  SliderDots(this.isActive);
  @override
  Widget build(BuildContext context) {
    return new AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 9 : 6,
      width: isActive ? 9 : 6,
      decoration: BoxDecoration(
          color: isActive ? ThemeColors.darkGrey : ThemeColors.mediumGrey,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
