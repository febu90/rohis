import 'package:flutter/material.dart';

class JadwalShalat extends StatefulWidget {
  @override
  _JadwalShalatState createState() => _JadwalShalatState();
}

class _JadwalShalatState extends State<JadwalShalat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 226, 241, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 185, 92, 1),
        title: Text("Jadwal Shalat"),
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 200.0,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(0, 185, 92, 1),
                borderRadius: new BorderRadius.vertical(
                    bottom: new Radius.elliptical(
                        MediaQuery.of(context).size.width, 100.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                       border: Border(
                        bottom: BorderSide(
                          //                   <--- left side
                          color: Colors.black26,
                          width: 4.0,
                        ),
                      )
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Icon(Icons.keyboard_arrow_left),
                            ),
                            Expanded(
                              flex: 8,
                              child: Center(
                                  child: Text("Tuesday, 08 Agust 2019 ")),
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(Icons.keyboard_arrow_right),
                            )
                          ],
                        )
                      ],
                    )),
                
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          //                   <--- left side
                          color: Colors.black12,
                          width: 1.0,
                        ),
                      )),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Text("Imsak")),
                      Expanded(
                        flex: 2,
                        child: Text("04:27"),
                      ),
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.block),
                      )
                      
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          //                   <--- left side
                          color: Colors.black12,
                          width: 1.0,
                        ),
                      )),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Text("Subuh")),
                      Expanded(
                        flex: 2,
                        child: Text("04:37"),
                      ),
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.notifications_active),
                      )
                      
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          //                   <--- left side
                          color: Colors.black12,
                          width: 1.0,
                        ),
                      )),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Text("Sunrise")),
                      Expanded(
                        flex: 2,
                        child: Text("05:48"),
                      ),
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.block),
                      )
                      
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          //                   <--- left side
                          color: Colors.black12,
                          width: 1.0,
                        ),
                      )),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Text("Dzuhr")),
                      Expanded(
                        flex: 2,
                        child: Text("11:54"),
                      ),
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.notifications_off),
                      )
                      
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          //                   <--- left side
                          color: Colors.black12,
                          width: 1.0,
                        ),
                      )),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Text("Ashr")),
                      Expanded(
                        flex: 2,
                        child: Text("15:14"),
                      ),
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.notifications_active),
                      )
                      
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          //                   <--- left side
                          color: Colors.black12,
                          width: 1.0,
                        ),
                      )),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Text("Maghrib")),
                      Expanded(
                        flex: 2,
                        child: Text("17:54"),
                      ),
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.notifications_active),
                      )
                      
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          //                   <--- left side
                          color: Colors.black12,
                          width: 1.0,
                        ),
                      )),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Text("Isya")),
                      Expanded(
                        flex: 2,
                        child: Text("19:01"),
                      ),
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.notifications_active),
                      )
                      
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
