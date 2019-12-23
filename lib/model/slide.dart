import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description
  });

}

final slideList = [

  Slide(
    imageUrl: 'assets/images/logo.png',
    title: '',
    description: ''
  ),

  Slide(
    imageUrl: 'assets/images/first.png',
    title: 'First Image TITLE',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea'
  ),

  Slide(
    imageUrl: 'assets/images/second.png',
    title: 'Second Image TITLE',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea'
  ),


];