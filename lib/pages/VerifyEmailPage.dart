import 'package:condo_pigeon/pages/HomePages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerifyEmailPage extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 22.0, 5.0, 20.0),
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
                      "Verify Your Email",
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
                      "We sent OTP code to your email",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Text(
                    "Enter your code",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 30),
                VerificationCode(
                  textStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  keyboardType: TextInputType.number,
                  // in case underline color is null it will use primaryColor: Colors.red from Theme
                  underlineColor: Colors.amber,
                  length: 6,
                  onCompleted: (String value) {
                    // setState(() {
                    //   _code = value;
                    // });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePages()),
                    );
                  },
                  onEditing: (bool value) {
                    //   setState(() {
                    //     _onEditing = value;
                    //   });
                    //   if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),
                SizedBox(height: 15),
                Center(
                  child: RichText(
                    text: new TextSpan(style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                      children: <TextSpan>[
                        new TextSpan(text: 'mrv@solutions.com', style: new TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                        new TextSpan(text: ' is not your email?', style: TextStyle(fontSize: 16) ),
                      ],
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    //TODO FORGOT PASSWORD SCREEN GOES HERE
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Change it here",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 20,fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
