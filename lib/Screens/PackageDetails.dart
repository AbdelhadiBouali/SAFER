import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Date.dart';

class PackageDetails extends StatelessWidget {
  String imageUrl;
  String destination;
  String prix;
  String description;

  PackageDetails(String im, String des, String pr, String desti) {
    this.imageUrl = im;
    this.destination = des;
    this.prix = pr;
    this.description = desti;
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  transform: Matrix4.translationValues(0.0, -70.0, 00),
                  child: Hero(
                      tag: 'assets/images/mal5.png',
                      child: Image(
                        height: 400.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/mal5.png'),
                      ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.only(left: 2.0),
                    onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (BuildContext context) => HomePage())),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    color: Colors.black,
                  ),
                ],
              ),
              
            ],
          ),
          Container(
            transform: Matrix4.translationValues(0.0, -70.0, 00),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Text(
                  destination.toUpperCase(),
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                Text(
                  'FLIGHT: : A ticket from Algiers to Penang will be booked for you.',
                  style: TextStyle(
                    color: Colors.green[400],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center
                ),
                SizedBox(height: 12.0),
                Text(
                  'HOSTING: A chamber in a 5 stars hotel, for ten days is waiting for you!',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[400]),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                Text('ACTIVITIES : Ski, Swimming and Camping',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[400]),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                Text(
                  'PRICE : ' + prix + 'Euros',
                  style: TextStyle(fontSize: 29.0, fontWeight: FontWeight.bold,color: Colors.red),
                ),
                SizedBox(height: 15.0)
              ],
            ),
          ),
          RaisedButton(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text('Continuer vers le payment'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            onPressed: () {
            },
            textColor: Colors.green,
            color: Colors.white,
            splashColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
