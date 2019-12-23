import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
          elevation: 0,
          child: Container(
            //      color: Color.fromARGB(255, 247, 247, 247),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 32,
                  ),
                  Center(
                    heightFactor: 1.49,
                    child: Column(
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.green[500],
                                    Colors.green[400]
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(37),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.green[400],
                                      offset: Offset(0, 1),
                                      blurRadius: 4)
                                ]),
                            child: Padding(
                                padding: EdgeInsets.all(2),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/logo1.png'),
                                          fit: BoxFit.cover),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(33)),
                                ))),
                        SizedBox(
                          height: 12,
                        ),
                        Text(' ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        SizedBox(
                          height: 2,
                        ),
                        Text('',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.body2),
                      ],
                    ),
                  ),

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        FlatButton(
                          highlightColor: ThemeColors.WhiteGrey,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.pages,
                                color: Colors.black,
                                size: 25,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "Packages",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Expanded(child: SizedBox())
                            ],
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(height: 35),
                        FlatButton(
                          highlightColor: Colors.white,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.comment,
                                color: Colors.black,
                                size: 25,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "Feedback",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Expanded(child: SizedBox())
                            ],
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(height: 35),
                        FlatButton(
                          highlightColor: ThemeColors.WhiteGrey,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.settings,
                                color: Colors.black,
                                size: 25,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Setting',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Expanded(child: SizedBox())
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 8,
                  ),

                  /// here is the deconnexion button

                  Container(
                    margin: EdgeInsets.only(top: 150),
                    child: FlatButton(
                      highlightColor: Color.fromARGB(255, 247, 247, 247),
                      splashColor: Colors.transparent,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.signOutAlt,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Sign out',
                            style: TextStyle(fontSize: 15),
                          ),
                          Expanded(child: SizedBox()),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(left: 190),
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.home),
                      color: Colors.black,
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
