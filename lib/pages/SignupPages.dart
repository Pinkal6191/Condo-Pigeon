import 'package:condo_pigeon/pages/LoginPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class SignupPages extends StatelessWidget {
  bool _onEditing = true;
  String _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading:
      // ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 25.0, 5.0, 20.0),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.grey,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                        child: Text(
                          "Sign up for a new account.",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 0, 0, 0),
                        child: Text(
                          "We just need some more information.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter Name", labelText: "Name"),
                          ),
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
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter Confirm Password",
                              labelText: "Confirm Password",
                            ),
                            obscureText: true,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Text("SIGN UP"),
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                        text: 'Already have an account?',
                        style: new TextStyle(fontSize: 16)),
                    new TextSpan(
                        text: ' Log in',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        // Single tapped.
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()),
                        );
                      }),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
