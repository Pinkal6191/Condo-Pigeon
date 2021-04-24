import 'dart:convert';
import 'package:condo_pigeon/pages/AnnouncementDetail.dart';
import 'package:condo_pigeon/pages/PartyRoomDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class PartyRoomListPage extends StatefulWidget {
  @override
  _PartyRoomListPageState createState() => _PartyRoomListPageState();
}

class _PartyRoomListPageState extends State<PartyRoomListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
      child: new Center(
        child: new FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/sampledata.json'),
            builder: (context, snapshot) {
              var beers = json.decode(snapshot.data.toString());

              return new ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  var beer = beers[index];
                  return GestureDetector(
                      child: Container(
                        height: 200,
                        child: Card(
                          elevation: 2,
                          color: HexColor("#f7f7f7"),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.blue, width: 0.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Container(
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Column(
                                              children: <Widget>[
                                                Container(
                                                  child: Padding(
                                                    padding: const EdgeInsets.fromLTRB(15, 0, 10,0),
                                                    child: Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Card(
                                                        color: Colors.green,
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(20),
                                                        ),
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(15, 6, 15, 6),
                                                          child: Text(
                                                            "CONFIRM",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontFamily:
                                                                    "Montserrat",
                                                                fontWeight:
                                                                    FontWeight.w600,
                                                                fontSize: 13),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 15,),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          20, 0, 0, 3),
                                                  child: Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Text(
                                                      "Family Function",
                                                      style: TextStyle(
                                                          color:
                                                              HexColor("#212121"),
                                                          fontFamily:
                                                              "Montserrat",
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 20),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          20, 0, 0, 0),
                                                  child: Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Text(
                                                      "01 May 2020 at 9AM to 8PM",
                                                      style: TextStyle(
                                                          color:
                                                              HexColor("#989898"),
                                                          fontFamily:
                                                              "Montserrat",
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Row(
                                          children: <Widget>[
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          20, 0, 0, 0),
                                                  child: Text(
                                                    "Requested Date: 02 May 2020",
                                                    style: TextStyle(
                                                        color:
                                                            HexColor("#989898"),
                                                        fontFamily:
                                                            "Montserrat",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 13),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 4, 0, 0),
                                                  child: Text(
                                                    "Mr. V Solutions",
                                                    style: TextStyle(
                                                        color:
                                                            HexColor("#1568aa"),
                                                        fontFamily:
                                                            "Montserrat",
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 22),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  20, 0, 0, 0),
                                              child: SizedBox(
                                                width: 100,
                                                height: 40,
                                                child: RaisedButton(
                                                  onPressed: () {
                                                    // Navigator.push(
                                                    //   context,
                                                    //   MaterialPageRoute(
                                                    //       builder: (context) => LoginPage()),
                                                    // );
                                                  },
                                                  child: Text("Cancel"),
                                                  color: HexColor("#989898"),
                                                  textColor: Colors.white,
                                                  shape:
                                                      new RoundedRectangleBorder(
                                                    borderRadius:
                                                        new BorderRadius
                                                            .circular(10.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          //   child: ClipPath(
                          //     child: Container(
                          //       height: 150,
                          //       decoration: BoxDecoration(
                          //           border: Border(
                          //               left:
                          //                   BorderSide(color: Colors.blue, width: 5))),
                          //     ),
                          //     clipper: ShapeBorderClipper(
                          //         shape: RoundedRectangleBorder(
                          //             borderRadius: BorderRadius.circular(5))),
                          //   ),
                          // );
                          // return new Card(
                          //   child: new Column(
                          //     crossAxisAlignment: CrossAxisAlignment.stretch,
                          //     children: <Widget>[
                          //       new Text("Name: " + beer['name'],
                          //           style: TextStyle(
                          //               fontWeight: FontWeight.bold, fontSize: 24)),
                          //       new Text("Country: " + beer['country'],
                          //           style: TextStyle(
                          //               fontWeight: FontWeight.normal, fontSize: 20)),
                          //       new Text("ABV: " + beer['abv'],
                          //           style: TextStyle(
                          //               fontWeight: FontWeight.normal, fontSize: 20)),
                          //       new Image.network(beer['image'], height: 200)
                          //     ],
                          //   ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PartyRoomDetail()),
                        );
                      });
                },
                itemCount: beers == null ? 0 : beers.length,
              );
            }),
      ),
    ));
  }
}
