import 'package:flutter/material.dart';

class VideoKajian extends StatefulWidget {
  @override
  _VideoKajianState createState() => _VideoKajianState();
}

class _VideoKajianState extends State<VideoKajian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 185, 92, 1),
        title: Text("Video Kajian"),
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
                                "UNTUK APA KITA HIDUP DI DUNIA - Ust. Abdul Somad. Lc. MA",
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.normal),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                              ),
                              Container(
                                alignment: Alignment.bottomRight,
                                width: 60.0,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 185, 92, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(80.0)),
                                ),
                                child: Center(
                                  child: Text(
                                    "Baca",
                                    style: TextStyle(color: Colors.white),
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
          )
        ],
      ),
    );
  }
}
