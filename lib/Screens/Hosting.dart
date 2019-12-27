import 'package:flutter/material.dart';
import 'PackageDetails.dart';
import '../main.dart';
import 'HomePage.dart';
import 'Date.dart';
import 'FIN.dart';
import 'Flight2.dart';
import 'Transport.dart';

class Hosting extends StatefulWidget {
  @override
  _HostingState createState() => _HostingState();
}

class _HostingState extends State<Hosting> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 40),
            Container(
              child:
                Text(
                  'Chambre hôtel ou maison à louer?',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              
            ),
            SizedBox(height: 20),
            new Container(
              height: 52.00,
              width: 302.00,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                border: Border.all(
                  width: 1.00,
                  color: Color(0xffffffff),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.00, 7.50),
                    color: Color(0xff191919).withOpacity(0.08),
                    blurRadius: 30,
                  ),
                ],
                borderRadius: BorderRadius.circular(6.00),
              ),
              child: TextField(
                  onChanged: (input) {
                    setState(() {
                                      User.setHome(input);    
                                        });
                  },
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
                        builder: (BuildContext context) => Transport()));
                  },
                ),
                SizedBox(width: 70),
                RaisedButton(
                  color: Colors.green[400],
                  child: Text('Continue'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => FIN()));
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
