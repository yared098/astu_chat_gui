// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 250.0,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 22.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Text('PROFILE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      fontFamily: 'sans-serif-light',
                                      color: Colors.black)),
                            )
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Stack(fit: StackFit.loose, children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                width: 140.0,
                                height: 140.0,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: ExactAssetImage('assets/user2.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 90.0, right: 100.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 25.0,
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )),
                      ]),
                    )
                  ],
                ),
              ),
              Container(
                color: Color(0xffFFFFFF),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  Text(
                                    'Parsonal Information',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  _status ? _getEditIcon() : Container(),
                                ],
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(
                                child: TextField(
                                  decoration: const InputDecoration(
                                    hintText: "Enter Your Name",
                                  ),
                                  enabled: !_status,
                                  autofocus: !_status,
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  Text(
                                    'Email ID',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(
                                child: TextField(
                                  decoration: const InputDecoration(
                                      hintText: "Enter Email ID"),
                                  enabled: !_status,
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  Text(
                                    'Mobile',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(
                                child: TextField(
                                  decoration: const InputDecoration(
                                      hintText: "Enter Mobile Number"),
                                  enabled: !_status,
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Text(
                                    'Pin Code',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Container(
                                  child: Text(
                                    'State',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                flex: 2,
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        hintText: "Enter Pin Code"),
                                    enabled: !_status,
                                  ),
                                ),
                                flex: 2,
                              ),
                              Flexible(
                                child: TextField(
                                  decoration: const InputDecoration(
                                      hintText: "Enter State"),
                                  enabled: !_status,
                                ),
                                flex: 2,
                              ),
                            ],
                          )),
                      !_status ? _getActionButtons() : Container(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getActionButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                  child: new RaisedButton(
                child: new Text("Save"),
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(new FocusNode());
                  });
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
              )),
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Container(
                  child: new RaisedButton(
                child: new Text("Cancel"),
                textColor: Colors.white,
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(new FocusNode());
                  });
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
              )),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget _getEditIcon() {
    return new GestureDetector(
      child: new CircleAvatar(
        backgroundColor: Colors.red,
        radius: 14.0,
        child: new Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}
