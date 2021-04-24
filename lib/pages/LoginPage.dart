import 'package:condo_pigeon/BgImage.dart';
import 'package:condo_pigeon/pages/VerifyEmailPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

import 'SignupPages.dart';

class LoginPage extends StatelessWidget {
  final UsernameController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.9),
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        BgImage(),
        Container(
            margin: const EdgeInsets.fromLTRB(0, 70, 0, 0),
            child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/sigin_logo.png",
                  height: 130,
                  width: 130,
                  // fit: BoxFit.fitWidth,
                ),
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height /2,
              child: Card(
                margin: const EdgeInsets.all(0.0),
                elevation: 2,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(35), bottom: Radius.zero),
                  ),
                child: Column(
                  children: <Widget>[
                    Form(
                        child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter E-Mail", labelText: "E-Mail"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password",
                            ),
                            obscureText: true,
                          ),
                        ],
                      ),
                    )),
                    FlatButton(
                      onPressed: () {
                        //TODO FORGOT PASSWORD SCREEN GOES HERE
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VerifyEmailPage()),
                            );
                          },
                          child: Text("LOGIN"),
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RichText(
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                  text:  'Don\'t have an account?',
                                style: TextStyle(
                                    color: HexColor("#212121"),
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              new TextSpan(
                                  text: ' Sign up',
                                  style: TextStyle(
                                      color: HexColor("#1568aa"),
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18),
                                  recognizer: TapGestureRecognizer()..onTap = () {
                                    // Single tapped.
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignupPages()),
                                    );
                                  }),

                            ],
                          ),
                        ),
                      ),
                    ),
                    // FlatButton(
                    //   onPressed: () {
                    //     //TODO FORGOT PASSWORD SCREEN GOES HERE
                    //   },
                    //   child: Align(
                    //     alignment: Alignment.center,
                    //     child: Text(
                    //       "or Login via",
                    //       textAlign: TextAlign.center,
                    //       style: TextStyle(color: Colors.grey, fontSize: 15),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Image.asset(
                    //   "assets/finger.png",
                    //   width: 60,
                    //   height: 60,
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
