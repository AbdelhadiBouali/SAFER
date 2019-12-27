import 'package:flutter/material.dart';
import 'PackageDetails.dart';
import '../main.dart';
import 'Flight.dart';
import 'HomePage.dart';

class Date extends StatefulWidget {
  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  DateTime _dateTime;
  DateTime _dateTimee;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 120),
            Row(
              children: <Widget>[
                Text(
                  '      Date',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            SizedBox(height: 100),
            Text(
                _dateTime == null
                    ? 'Please choose your date of departer. '
                    : _dateTime.toString(),
                style: TextStyle(fontWeight: FontWeight.bold)),
            RaisedButton(
              child: Text('Pick a date'),
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate:
                            _dateTime == null ? DateTime.now() : _dateTime,
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2021))
                    .then((date) {
                  setState(() {
                    _dateTime = date;
                  });
                });
              },
            ),
            SizedBox(
              height: 40,
            ),
            Text(
                _dateTimee == null
                    ? 'Please choose your date of arrival. '
                    : _dateTimee.toString(),
                style: TextStyle(fontWeight: FontWeight.bold)),
            RaisedButton(
              child: Text('Pick a date'),
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate:
                            _dateTimee == null ? DateTime.now() : _dateTimee,
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2021))
                    .then((date) {
                  setState(() {
                    _dateTimee = date;
                  });
                });
              },
            ),
            SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.grey,
                  child: Text('Retour'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
                  },
                ),
                SizedBox(width: 70),
                RaisedButton(
                  color: Colors.green[400],
                  child: Text('Continuer'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Flight()));
                      User.setDatedepa(_dateTime.toString());
                      User.setDatearriv(_dateTimee.toString());
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
