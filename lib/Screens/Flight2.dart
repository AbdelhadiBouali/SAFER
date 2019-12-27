import 'package:flutter/material.dart';
import 'PackageDetails.dart';
import '../main.dart';
import 'HomePage.dart';
import 'Date.dart';
import 'Flight.dart';
import 'Transport.dart';

class Flight2 extends StatefulWidget {
  @override
  _Flight2State createState() => _Flight2State();
}

class _Flight2State extends State<Flight2> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 120),
            Container(
              child:
                Text(
                  ' No Flight is currently available',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
            
            ),
            SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.grey,
                  child: Text('Back'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Flight()));
                  },
                ),
                SizedBox(width: 70),
                RaisedButton(
                  color: Colors.green[400],
                  child: Text('Continue'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Transport()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
