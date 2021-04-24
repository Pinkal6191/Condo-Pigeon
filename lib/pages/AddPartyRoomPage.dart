import 'dart:math';
import 'package:condo_pigeon/pages/AppToolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:table_calendar/table_calendar.dart';

class AddPartyRoomPage extends StatefulWidget {
  @override
  _AddPartyRoomPageState createState() => _AddPartyRoomPageState();
}

class _AddPartyRoomPageState extends State<AddPartyRoomPage> {
  var _titleheading = "Add Party Room";
  CalendarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    // CalendarHighlighter highlighter = (DateTime dt) {
    //   // randomly generate a boolean list of length monthLength + 1 (because months start at 1)
    //   return List.generate(Calendar.monthLength(dt) + 1, (index) {
    //     return (false);
    //   });
    // };
    return Scaffold(
      appBar: AppToolbar(context, _titleheading),
      body: Container(
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
              //   height: MediaQuery.of(context).size.height /3,
              //   width: MediaQuery.of(context).size.width - 0,
              //   onTapListener: (DateTime dt) {
              //     final snackbar = SnackBar(
              //       content: Text('Clicked ${dt.month}/${dt.day}/${dt.year}!'),
              //     );
              //     Scaffold.of(context).showSnackBar(snackbar);
              //   },
              //   //   highlighter: highlighter,
              // ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child:  TextFormField(
                  decoration: InputDecoration(
                      hintText: "Event Name", labelText: "Event Name"),
                  style: TextStyle(
                      color: HexColor("#999999"),
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child:  TextFormField(
                  decoration: InputDecoration(
                      hintText: "Start Date", labelText: "Start Date"),
                  style: TextStyle(
                          color: HexColor("#999999"),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child:  TextFormField(
                  decoration: InputDecoration(
                      hintText: "End Date", labelText: "End Date"),
                  style: TextStyle(
                      color: HexColor("#999999"),
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child:  TextFormField(
                  decoration: InputDecoration(
                      hintText: "Event Description", labelText: "Event Description"),
                  style: TextStyle(
                      color: HexColor("#999999"),
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
              ),
              SizedBox(height: 60,),
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
