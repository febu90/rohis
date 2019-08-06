import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rohisapp/page/artikel_detail.dart';

class Artikel extends StatefulWidget {
  @override
  _ArtikelState createState() => _ArtikelState();
}

class _ArtikelState extends State<Artikel> {
  static double _minHeight = 130, _maxHeight = 280;
  Offset _offset = Offset(0, _minHeight);
  bool _isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 185, 92, 1),
        title: Text("Artikel"),
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
          Align(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            flex: 5, child: Image.asset('img/watermark.png')),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                        ),
                        Flexible(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "Manakah yang Lebih Utama, Wanita Shalat di Rumah atau di Masjid? (Bag. 2)",
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                ),
                                Hero(
                                  tag: "artikel1",
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            new ArtikelDetail(),
                                      ));
                                    },
                                    child: Container(
                                      alignment: Alignment.bottomRight,
                                      width: 60.0,
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(0, 185, 92, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80.0)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Baca",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: GestureDetector(
              onPanUpdate: (details) {
                _offset = Offset(0, _offset.dy - details.delta.dy);
                if (_offset.dy < _ArtikelState._minHeight) {
                  _offset = Offset(0, _ArtikelState._minHeight);
                  _isOpen = false;
                } else if (_offset.dy > _ArtikelState._maxHeight) {
                  _offset = Offset(0, _ArtikelState._maxHeight);
                  _isOpen = true;
                }
                setState(() {});
              },
              child: AnimatedContainer(
                padding: EdgeInsets.all(10.0),
                duration: Duration.zero,
                curve: Curves.easeOut,
                height: _offset.dy,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20.0,
                      offset: new Offset(0.0, 10.0),
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image.asset(
                              "img/doadzikir.png",
                              height: 50.0,
                            ),
                            Text("Dzikir & Doa")
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(left: 10.0)),
                        Column(
                          children: <Widget>[
                            Image.asset(
                              "img/doadzikir.png",
                              height: 50.0,
                            ),
                            Text("Kalender\nHijriah")
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(left: 10.0)),
                        Column(
                          children: <Widget>[
                            Image.asset(
                              "img/doadzikir.png",
                              height: 50.0,
                            ),
                            Text("Kiblat")
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(left: 10.0)),
                        Column(
                          children: <Widget>[
                            Image.asset(
                              "img/doadzikir.png",
                              height: 50.0,
                            ),
                            Text("Amalan Harian")
                          ],
                        )
                      ],
                    ),
                    _iconLain(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconLain() {
    if (_isOpen == true) {
      return Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset(
                "img/doadzikir.png",
                height: 50.0,
              ),
              Text("Dzikir & Doa")
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Column(
            children: <Widget>[
              Image.asset(
                "img/doadzikir.png",
                height: 50.0,
              ),
              Text("Kalender\nHijriah")
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Column(
            children: <Widget>[
              Image.asset(
                "img/doadzikir.png",
                height: 50.0,
              ),
              Text("Kiblat")
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Column(
            children: <Widget>[
              Image.asset(
                "img/doadzikir.png",
                height: 50.0,
              ),
              Text("Amalan Harian")
            ],
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
