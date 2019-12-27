import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Date.dart';
import '../main.dart';
import 'Hosting.dart';

class FIN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                  child: Text(
                'Votre package est prêt!',
                style: TextStyle(fontSize: 40),
              )),
              SizedBox(height: 40),
            ],
          ),
          SizedBox(height: 40),
          Container(
            transform: Matrix4.translationValues(0.0, -70.0, 00),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Date départ : ' + User.getDatedepa(),
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                Text('Date arrivé: : ' + User.getDatearriv(),
                    style: TextStyle(
                      color: Colors.green[400],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
                    SizedBox(height: 10.0),
                    Text('Billets dAvion: : Aucun',
                    style: TextStyle(
                      color: Colors.green[400],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
                SizedBox(height: 12.0),
                Text(
                  'HOSTING: ' + User.getHome(),
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[400]),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                Text(
                  'Transport : ' + User.getVtc(),
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[400]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          RaisedButton(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text('Continuer vers le payment'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            onPressed: () {},
            textColor: Colors.green,
            color: Colors.white,
            splashColor: Colors.green,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.grey,
                child: Text('Back'),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Hosting()));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
