import 'package:condo_pigeon/pages/MyProfilePages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class AccountSettingPage extends StatefulWidget {
  @override
  _AccountSettingPageState createState() => _AccountSettingPageState();
}

class _AccountSettingPageState extends State<AccountSettingPage> {
  var _titleheading = "Setings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: HexColor("#f7f7f7"),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: Text(
                              "Notifications",
                              style: TextStyle(
                                  color: HexColor("#212121"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/ic_next_right.png",
                          width: 20,
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: (){

                },
              ),
              SizedBox(height: 5,),
              GestureDetector(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: Text(
                              "Profile Settings",
                              style: TextStyle(
                                  color: HexColor("#212121"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/ic_next_right.png",
                          width: 20,
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyProfilePages()),
                  );
                },
              ),
              SizedBox(height: 5,),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Text(
                            "Change Password",
                            style: TextStyle(
                                color: HexColor("#212121"),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/ic_next_right.png",
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Text(
                            "Delete Account",
                            style: TextStyle(
                                color: HexColor("#dd0000"),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Text(
                            "Sign Out",
                            style: TextStyle(
                                color: HexColor("#212121"),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
