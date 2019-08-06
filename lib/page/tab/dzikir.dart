import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:rohisapp/endpoint/api.dart';
import 'package:rohisapp/page/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dzikir extends StatefulWidget {
  @override
  _DzikirState createState() => _DzikirState();
}

class _DzikirState extends State<Dzikir> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  SharedPreferences sharedPreferences;
  TextEditingController controllerAlasan = TextEditingController();
  var rolename = "";
  var fullname = "";
  var roleid = "";
  var email = "";
  var branchid = "";
  var userid = "";
  bool islogin = false;
  final url = new Api().url;
  bool type1 = false;
  bool type2 = false;
  int types = 0;
  bool warna1 = false;
  bool warna2 = false;
  int multi = 0;
  bool isSwitched = true;

  double textSizeMenu = 14.0;
  double paddingBoxMenu = 12.0;
  double heightNotification = 17.0;
  double widthNotification = 17.0;
  double fontSizeNotification = 8.0;
  String typex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<String> Names = [
    'Dzikir Pagi Petang',
    'Dzikir Setelah Sholat',
    'Dzikir Pagi Petang',
    'Dzikir Pagi Petang',
    'Dzikir Setelah Sholat',
    'Dzikir Pagi Petang',
    'Dzikir Setelah Sholat'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // endDrawer: new AppDrawerMh(),
      body: SingleChildScrollView(
        child: new Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.blueGrey[100]),
          height: MediaQuery.of(context).size.height,
          child: new ListView.builder(
            reverse: false,
            itemBuilder: (_, int index) => EachList(this.Names[index]),
            itemCount: this.Names.length,
          ),
        ),
      ),
    );
  }
}

class EachList extends StatelessWidget {
  final String name;
  EachList(this.name);
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Row(
          children: <Widget>[
            new Image.asset(
              "assets/icons/icon-prayer/drawable-hdpi/Group 164.png",
              height: 45.0,
              width: 45.0,
            ),
            new Padding(padding: EdgeInsets.only(right: 10.0)),
            new Text(
              name,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
