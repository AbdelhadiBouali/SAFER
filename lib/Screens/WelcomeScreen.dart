import 'package:flutter/material.dart';
import '../Widgets/SliderItems.dart';
import '../model/slide.dart';

class WelcomeScreen extends StatelessWidget {

  final PageController _pageController = PageController(
    initialPage: 0
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            itemCount: slideList.length,
            itemBuilder: (ctx, i) => SliderItem(i),
          ),
        ),
      ),
    );
  }
}
