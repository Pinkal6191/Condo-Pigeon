import 'package:condo_pigeon/pages/AppToolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:date_format/date_format.dart';

class MyProfilePages extends StatefulWidget {
  @override
  _MyProfilePagesState createState() => _MyProfilePagesState();
}

class _MyProfilePagesState extends State<MyProfilePages> {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();
  var _titleheading = "My Profile";
  DateTime currentDate = DateTime.now();
  String _setDate;

  // String _hour, _minute, _time;
  String dateTime;
  DateTime selectedDate = DateTime.now();

  // TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);
  TextEditingController _dateController = TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        // _dateController.text = DateFormat.yMd().format(selectedDate);
        _dateController.text =
            formatDate(selectedDate, [dd, '/', mm, '/', yyyy]);
      });
  }

  @override
  void initState() {
    _dateController.text = formatDate(DateTime.now(), [dd, '/', mm, '/', yyyy]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    dateTime = formatDate(DateTime.now(),
        [dd, '/', mm, '/', yyyy]); //DateFormat.yMd().format(DateTime.now());
    return new Scaffold(
        appBar: AppToolbar(context, _titleheading),
        body: new Container(
          color: Colors.white,
          child: new ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  new Container(
                    height: 130.0,
                    color: Colors.blue,
                    child: Image.asset(
                      "assets/bg_img.png",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                      color: Colors.blue.withOpacity(0.4),
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60.0),
                    child: new Stack(fit: StackFit.loose, children: <Widget>[
                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white,
                                    width: 3.0,
                                    style: BorderStyle.solid),
                                image: new DecorationImage(
                                  image:
                                      new ExactAssetImage('assets/person.png'),
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 60.0, left: 100.0, right: 10),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 16.0,
                                child: Image.asset(
                                  "assets/ic_camera.png",
                                  width: 17,
                                  height: 17,
                                ),
                              )
                            ],
                          )),
                    ]),
                  ),
                  SingleChildScrollView(
                    child: new Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: 15, top: 180, left: 25, right: 25),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Center(
                                child: Text(
                              "Vimal Parmar",
                              style: TextStyle(
                                  color: HexColor("#212121"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24),
                            )),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter Name", labelText: "Name"),
                              style: TextStyle(
                                  color: HexColor("#212121"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter E-Mail",
                                  labelText: "E-Mail"),
                              style: TextStyle(
                                  color: HexColor("#212121"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter Gender",
                                  labelText: "Gender"),
                              style: TextStyle(
                                  color: HexColor("#212121"),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                _selectDate(context);
                              },
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter Date of birth",
                                    labelText: "Date of Birth"),
                                style: TextStyle(
                                    color: HexColor("#212121"),
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                                keyboardType: TextInputType.datetime,
                                enabled: false,
                                controller: _dateController,
                                onSaved: (String val) {
                                  _setDate = val;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
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
                      child: Text("SAVE", style: TextStyle(
                          color: HexColor("#ffffff"),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 20),),
                      color: HexColor("#1568aa"),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
