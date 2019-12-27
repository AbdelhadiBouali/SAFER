import 'package:flutter/material.dart';
import '../model/packages.dart';
import './PackageDetails.dart';

class PackagePage extends StatefulWidget {
  @override
  _PackagePageState createState() => new _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  @override
  Widget build(BuildContext context) {
    Package p = new Package();
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        for (int i = 0; i < packages.length; i++)
          _buildPackageCard(packages[i].imageUrl, packages[i].destination,
              packages[i].prix, packages[i].description)
      ],
    );
  }

  Widget _buildPackageCard(
      String imageUrl, String destination, String prix, String description) {
    return Container(
      child: Row(
        children: <Widget>[
          InkWell(
            child: new Container(
              margin: EdgeInsets.only(left: 10),
              height: 265.00,
              width: 224.00,
              child: Text(destination,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold        
              )),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageUrl)),
                borderRadius: BorderRadius.circular(8.00),
              ),
            ),
            onTap: (){
                Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => PackageDetails(imageUrl, destination, prix, description)));
            },
          ),
          Icon(Icons.arrow_right),
        ],
      ),
    );
  }
}
