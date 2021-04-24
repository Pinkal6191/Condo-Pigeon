import 'dart:convert';
import 'package:condo_pigeon/pages/AnnouncementDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:hexcolor/hexcolor.dart';

class AnnouncementsListPage extends StatefulWidget {
  AnnouncementsListPage({Key key}) : super(key: key);

  @override
  AnnouncementsListPageState createState() => AnnouncementsListPageState();
}

class AnnouncementsListPageState extends State<AnnouncementsListPage> {
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
                        height: 150,
                        child: Card(
                          elevation: 2,
                          color: HexColor("#f7f7f7"),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.blue, width: 0.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                  color: Colors.deepPurple,
                                ),
                                width: 5,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Image.asset(
                                              "assets/ic_list_announcement.png",
                                              width: 30,
                                              height: 30,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "Polio Vaccine Drop",
                                                  style: TextStyle(
                                                      color:
                                                          HexColor("#212121"),
                                                      fontFamily: "Montserrat",
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 18),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  "01 May 2021 at 2PM to 4 PM",
                                                  style: TextStyle(
                                                      color:
                                                          HexColor("#989898"),
                                                      fontFamily: "Montserrat",
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12),
                                                  textAlign: TextAlign.left,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Text(
                                                    "397 Terry Carter Cres Newmarket on L3Y 9G2 (Newmarket, ontario)",
                                                    style: TextStyle(
                                                        color:
                                                            HexColor("#212121"),
                                                        fontFamily:
                                                            "Montserrat",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.4,
                                                        fontSize: 14),
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ),
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
                                                      color:
                                                          HexColor("#212121"),
                                                      fontFamily: "Montserrat",
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12),
                                                  textAlign: TextAlign.left,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            )
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
                              builder: (context) => AnnouncementDetail()),
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
