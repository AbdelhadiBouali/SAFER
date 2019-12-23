import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';
import '../model/slide.dart';


class SliderItem extends StatelessWidget {
  final int index;
  SliderItem(this.index);
  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      ResponsiveContainer(
          heightPercent: 50.0,
          widthPercent: 75.0,
          child: Image.asset(slideList[index].imageUrl)),
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          slideList[index].title,
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
      SizedBox(height: 10),
      Text(
        slideList[index].description,
        textAlign: TextAlign.left,
      ),
 /*     Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          FlatButton(
            child: Text('Skip'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            onPressed: () {},
            textColor: Colors.green,
            color: Colors.white,
          ),
        ],
      ), */
    ]);
  }
}
