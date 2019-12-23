import 'package:flutter/material.dart';
import '../Widgets/SliderItems.dart';
import '../model/slide.dart';
import 'dart:async';
import '../Widgets/SliderDots.dart';
import '../Screens/LogInPage.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _currentpage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentpage <= 2) {
        _currentpage++;
      } else {
        _currentpage = 0;
      }

      _pageController.animateToPage(
        _currentpage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentpage = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              PageView.builder(
                onPageChanged: _onPageChanged,
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                itemCount: slideList.length,
                itemBuilder: (ctx, i) => SliderItem(i),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (int i = 0; i < slideList.length; i++)
                          if (i == _currentpage)
                            SliderDots(true)
                          else
                            SliderDots(false)
                      ],
                    ),
                  ),
                  FlatButton(
                    child: Text(slideList[_currentpage].nav),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    onPressed: () {
                     Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => LogInPage())); 
                    },
                    textColor: Colors.green,
                    color: Colors.white,
                    splashColor: Colors.green,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
