import 'package:condo_pigeon/pages/AppToolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:table_calendar/table_calendar.dart';

class AddServiceElevetor extends StatefulWidget {
  @override
  _AddServiceElevetorState createState() => _AddServiceElevetorState();
}

class _AddServiceElevetorState extends State<AddServiceElevetor> {
  var _titleheading = "Add Service Elevetor";
  CalendarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppToolbar(context, _titleheading),
      body: Container(
        color: HexColor("#f7f7f7"),
        margin: EdgeInsets.only(top: 5),
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TableCalendar(
                rowHeight: 45,
                initialCalendarFormat: CalendarFormat.month,
                calendarStyle: CalendarStyle(
                    todayColor: Colors.blue,
                    selectedColor: Theme.of(context).primaryColor,
                    todayStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: Colors.white)
                ),
                headerStyle: HeaderStyle(
                  centerHeaderTitle: true,
                  formatButtonDecoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  formatButtonTextStyle: TextStyle(color: Colors.white),
                  formatButtonShowsNext: false,
                  formatButtonVisible: false,
                ),
                // startingDayOfWeek: StartingDayOfWeek.monday,
                // onDaySelected: (date, events) {
                //   print(date.toUtc());
                // },
                builders: CalendarBuilders(
                  selectedDayBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(
                        date.day.toString(),
                        style: TextStyle(color: Colors.white),
                      )),
                  todayDayBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(
                        date.day.toString(),
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                calendarController: _controller,
              ),
              // Calendar(
              //   height: MediaQuery.of(context).size.height / 3,
              //   width: MediaQuery.of(context).size.width - 0,
              //   onTapListener: (DateTime dt) {
              //     final snackbar = SnackBar(
              //       content: Text('Clicked ${dt.month}/${dt.day}/${dt.year}!'),
              //     );
              //     Scaffold.of(context).showSnackBar(snackbar);
              //   },
              //   //   highlighter: highlighter,
              // ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Morning",
                    style: TextStyle(
                        color: HexColor("#363636"),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 5, 5, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/ic_clock.png",
                              width: 22,
                              height: 20,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              "08:30 AM",
                              style: TextStyle(
                                  color: HexColor("#363636"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: HexColor("#1568aa"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/ic_clock_white.png",
                              width: 22,
                              height: 20,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              "09:00 AM",
                              style: TextStyle(
                                  color: HexColor("#ffffff"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/ic_clock.png",
                              width: 22,
                              height: 20,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              "09:30 AM",
                              style: TextStyle(
                                  color: HexColor("#363636"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/ic_clock.png",
                              width: 22,
                              height: 20,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              "08:30 AM",
                              style: TextStyle(
                                  color: HexColor("#363636"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/ic_clock.png",
                              width: 22,
                              height: 20,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              "09:00 AM",
                              style: TextStyle(
                                  color: HexColor("#363636"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/ic_clock.png",
                              width: 22,
                              height: 20,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              "09:30 AM",
                              style: TextStyle(
                                  color: HexColor("#363636"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 80,),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: RaisedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => VerifyEmailPage()),
                      // );
                    },
                    child: Text("REQUEST"),
                    color: HexColor("#1568aa"),
                    textColor: HexColor("#ffffff"),
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
    );
  }
}
