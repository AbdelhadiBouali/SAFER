import 'package:flutter/material.dart';
import '../main.dart';
import 'SignUpPage.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import './HomePage.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart';
import 'dart:convert';

class LogInPage extends StatefulWidget {
  @override
  State createState() {
    return new LogInPageState();
  }
}

class LogInPageState extends State<LogInPage> {
  String _email, _password;

  bool _isLoading = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String error;

  _makePostRequest(String email, String pass) async {
    // set up POST request arguments

    String url = 'http://172.20.10.6:3000/user/login';
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = '{"email": "$email", "motDePasse": "$pass"}';
    // make POST request

    Response response = await post(url, headers: headers, body: json);
    // check the status code for the result

    int statusCode = response.statusCode;
    if (statusCode == 200) {
      String body = response.body;
      var parsedJson = jsonDecode(body);
     // String test = parsedJson();
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => HomePage()));
    }
    // this API passes back the id of the new item added to the body
  }

/*
  Future<http.Response> postRequest(String email, String pass) async {
    var url = 'http://172.20.10.6:3000/user/login';
    var body = jsonEncode({
      'data': {'email': email, 'motDePasse': pass}
    });
   http.post(url, headers: {"Content-Type": "application/json"}, body: body)
        .then((http.Response response) {
      if (response.statusCode == 200) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => HomePage()));
      }
    
    });
  }
*/

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: formKey,
          child: ListView(
              //    mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ResponsiveContainer(
                    margin: EdgeInsets.only(top: 50),
                    heightPercent: 35.0,
                    widthPercent: 50.0,
                    child: Image.asset('assets/images/logo1.png')),
                Row(
                  children: <Widget>[
                    Text(
                      "Sign in",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ThemeColors.lightGrey,
                  ),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          color: Colors.black87),
                      cursorColor: Colors.green[200],
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail,
                          size: 18,
                          color: Colors.green,
                        ),
                        border: InputBorder.none,
                        hintText: "EMAIL",
                        //  hintStyle: Theme.of(context).textTheme.display2,
                      ),
                      onChanged: (input) {
                        setState(() {
                          _email = input;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ThemeColors.lightGrey,
                  ),
                  child: Center(
                    child: TextField(
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          color: Colors.black87),
                      obscureText: true,
                      cursorColor: Colors.green[200],
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 18,
                          color: Colors.green[400],
                        ),
                        border: InputBorder.none,
                        hintText: "PASSWORD",
                      ),
                      onChanged: (input) {
                        setState(() {
                          _password = input;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 52,
                  //    color: Colors.green[400],
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[400],
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.green[400],
                          blurRadius: 13.0,
                        ),
                      ]),
                  child: FlatButton(
                      splashColor: Color(0x25FFDDDD),
                      highlightColor: Colors.transparent,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
                      //  _makePostRequest(_email, _password);
                      },
                      child: Text(
                        "SIGN IN",
                        style: new TextStyle(
                            color: Colors.white,
                            fontFamily: 'Oxygen',
                            fontSize: 16),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?",
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                          )),
                      GestureDetector(
                          child: Text(
                            "JOIN US",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SignUpPage()));
                          }),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
