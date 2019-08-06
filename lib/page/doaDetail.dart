import 'package:flutter/material.dart';
import 'package:rohisapp/page/tab/doa.dart' as doa;
import 'package:rohisapp/page/tab/dzikir.dart' as dzikir;
import 'package:rohisapp/static/color_loader_3.dart';

class DoaDetail extends StatefulWidget {
  @override
  _DoaDetailState createState() => _DoaDetailState();
}

class _DoaDetailState extends State<DoaDetail>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // Toggles the password show status

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      appBar: AppBar(
        // elevation: 0.8,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(0, 153, 76, 1),
        centerTitle: false,
        leading: BackButton(color: Colors.white),
        elevation: 0.0,
        title: Text("Do'a Sebelum Makan",
            style: TextStyle(
                fontFamily: 'Roboto', color: Colors.white, fontSize: 16.0)),
      ),
      body: SingleChildScrollView(
        child: new Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.blueGrey[100]),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Do'a Sebelum Makan",
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                  ],
                ),
              ),
              new Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          new Row(
                            children: <Widget>[
                              Expanded(
                                flex: 10,
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        new Text(
                                            "اَللَّهُمَّ بَارِكْ لَنَا فِيْمَا رَزَقْتَنَا وَقِنَا عَذَابَ النَّارِ",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 17.0)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          new Row(
                            children: <Widget>[
                              Flexible(
                                  child: new Text(
                                      "Alaahumma barik lanaa fiimaa razaqtanaa waqinaa ‘adzaa bannar"))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          new Row(
                            children: <Widget>[
                              Flexible(
                                  child: new Text(
                                      "Artinya : “Ya Allah, berkahilah untukku dalam sesuatu yang Engkau rezekikan kepadaku, dan peliharalah aku dari siksa neraka.” (HR.Ibnu Sunni)"))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                top: 10.0,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
