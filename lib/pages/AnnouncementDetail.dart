import 'package:condo_pigeon/pages/AppToolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class AnnouncementDetail extends StatelessWidget {
  var _titleheading = "Polio Vaccine Drop";

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
                          "01 May 2021 at 2PM to 4 PM",
                          style: TextStyle(
                              color: HexColor("#989898"),
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: Text(
                                "397 Terry Carter Cres Newmarket on L3Y 9G2 (Newmarket, ontario)",
                                style: TextStyle(
                                    color: HexColor("#212121"),
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w400,
                                    height: 1.4,
                                    fontSize: 15),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/ic_location.png",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "2 KM",
                              style: TextStyle(
                                  color: HexColor("#212121"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                              textAlign: TextAlign.left,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          style: TextStyle(
                              color: HexColor("#212121"),
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                              height: 1.4,
                              fontSize: 15),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: RaisedButton(
                            onPressed: () async { },
                            child: Text(
                              "Acknowledge",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                              ),
                            ),
                            color: Colors.lightBlue,
                            textColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
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
