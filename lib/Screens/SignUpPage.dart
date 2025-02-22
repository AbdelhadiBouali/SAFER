import 'package:flutter/material.dart';
import '../main.dart';
import 'package:responsive_container/responsive_container.dart';
import 'LogInPage.dart';

class SignUpPage extends StatefulWidget {
  @override
  State createState() {
    return new SignUpPageState();
  }
}

class SignUpPageState extends State<SignUpPage> {
  String _email, _password, _name;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String error;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: formKey,
          child: ListView(
              //    mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ResponsiveContainer(
                    margin: EdgeInsets.only(top: 50),
                    heightPercent: 30.0,
                    widthPercent: 30.0,
                    child: Image.asset('assets/images/logo1.png')),
                Row(
                  children: <Widget>[
                    Text(
                      "Create an account",
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
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          color: Colors.black87),
                      cursorColor: Colors.green[200],
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          size: 18,
                          color: Colors.green,
                        ),
                        border: InputBorder.none,
                        hintText: "FULL NAME",
                        //  hintStyle: Theme.of(context).textTheme.display2,
                      ),
                      onChanged: (input) {
                        setState(() {
                          _name = input;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 16),
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
                  height: 30,
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
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: FlatButton(
                      splashColor: Color(0x25FFDDDD),
                      highlightColor: Colors.transparent,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        // USE _email and _password to sign in the user and take him to the main page
                      },
                      child: Text(
                        "SIGN UP",
                        style: new TextStyle(
                            color: Colors.white,
                            fontFamily: 'Oxygen',
                            fontSize: 16),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("OR SIGN UP WITH",
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 52,
                  //    color: Colors.green[400],
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorsSocial.facebook,
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.blue[400],
                          blurRadius: 5.0,
                        ),
                      ]),
                  child: FlatButton(
                      splashColor: Color(0x25FFDDDD),
                      highlightColor: Colors.transparent,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        // USE _email and _password to sign in the user and take him to the main page
                      },
                      child: Text(
                        "FACEBOOK",
                        style: new TextStyle(
                            color: Colors.white,
                            fontFamily: 'Oxygen',
                            fontSize: 16),
                      )),
                ),
               SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an account?",
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                          )),
                      GestureDetector(
                          child: Text(
                            "SIGN IN",
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
                                        LogInPage()));
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
