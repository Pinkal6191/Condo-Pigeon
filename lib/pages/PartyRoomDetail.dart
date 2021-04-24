import 'package:condo_pigeon/pages/AppToolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class PartyRoomDetail extends StatelessWidget {
  var _titleheading = "Family Function";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppToolbar(context, _titleheading),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: Text(
                          "01 May 2021 at 9AM to 8PM",
                          style: TextStyle(
                              color: HexColor("#212121"),
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(
                            color: HexColor("#212121"),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w300,
                            height: 1.4,
                            fontSize: 16),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: Text(
                          "Requested Date: 02 May 2020",
                          style: TextStyle(
                              color: HexColor("#989898"),
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 45,
                              child: RaisedButton(
                                onPressed: () async { },
                                child: Text(
                                  "Delete",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18
                                  ),
                                ),
                                color: HexColor("#b01a1a"),
                                textColor: Colors.white,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
