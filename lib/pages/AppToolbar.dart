import 'package:condo_pigeon/pages/AddPartyRoomPage.dart';
import 'package:condo_pigeon/pages/AddServiceElevetor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

PreferredSize AppToolbar(BuildContext context, String _titleheading) {
  bool _isVisible = false;
  if (_titleheading == "Party Room" || _titleheading == "Service Elevetor") {
    _isVisible = true;
  }
  return PreferredSize(
    preferredSize: Size.fromHeight(80.0),
    child: AppBar(
      toolbarHeight: 80,
      flexibleSpace: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                Visibility(
                  visible: _isVisible,
                  child: FlatButton(
                    onPressed: () {
                      if (_titleheading == "Party Room")
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddPartyRoomPage()),
                        );
                      }
                      else if (_titleheading == "Service Elevetor")
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddServiceElevetor()),
                          );
                        }
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(
                          color: HexColor("#212121"),
                          fontSize: 22,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  _titleheading,
                  style: TextStyle(
                      color: HexColor("#212121"),
                      fontSize: 30,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ]),
        ),
      ),
      backgroundColor: Colors.white,
    ),
  );
}
