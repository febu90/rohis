import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:rohisapp/endpoint/api.dart';
import 'package:rohisapp/page/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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

    (() async {
      sharedPreferences = await SharedPreferences.getInstance();
      setState(() {
        print(sharedPreferences.getBool("isLogin").toString());
        if (sharedPreferences.getBool("isLogin") != null) {
          islogin = sharedPreferences.getBool("isLogin");
          rolename = sharedPreferences.getString("rolename");
          roleid = sharedPreferences.getString("roleid");
          email = sharedPreferences.getString("email");
          branchid = sharedPreferences.getString("branchid");
          userid = sharedPreferences.getString("userid");
          fullname = sharedPreferences.getString("fullname");
        }
      });

      print('branchid ' + branchid);
      print('userid ' + userid);
    })();
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alasan"),
          content: Container(
            height: 180.0,
            child: Column(
              children: <Widget>[
                new TextField(
                  controller: controllerAlasan,
                  maxLines: 4,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    border: OutlineInputBorder(),
                    hintText: "Alasan Offline",
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              color: Colors.red,
              child: new Text(
                "Cancel",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  isSwitched = true;
                });
                Navigator.of(context).pop();
              },
            ),
            // usually buttons at the bottom of the dialog
            new FlatButton(
              color: Color.fromRGBO(7, 41, 102, 1),
              child: new Text(
                "OK",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _logout() async {
    sharedPreferences.clear();
    print("sharedPreferences " + islogin.toString());
    setState(() {
      islogin = false;
    });
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => Login(),
        ),
        ModalRoute.withName('/'));
    // Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
    //   return new Login();
    // }));
  }

  _isLogin() {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            new Alert(
              context: context,
              type: AlertType.warning,
              title: "Apakah Yakin Ingin Keluar ?",
              // desc: "Apakah yakin ingin keluar ?",
              buttons: [
                DialogButton(
                  child: Text(
                    "TIDAK",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => Navigator.pop(context),
                  color: Colors.blue,
                ),
                DialogButton(
                  child: Text(
                    "YA",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  // onPressed: () => _logout(),
                  onPressed: () async {
                    setState(() {
                      islogin = false;
                    });
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.remove('email');
                    prefs.clear();
                    _logout();
                  },
                  color: Colors.blue,
                )
              ],
            ).show();
          },
          child: new Image.asset(
            "img/logout2.png",
            width: 30.0,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // endDrawer: new AppDrawerMh(),
      appBar: AppBar(
        // elevation: 0.8,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Column(
          children: <Widget>[
            Text("Credit Marketing Officer",
                style: TextStyle(color: Colors.black)),
            Text(fullname, style: TextStyle(color: Colors.black)),
          ],
        ),
        actions: <Widget>[
          Padding(padding: const EdgeInsets.all(8.0), child: _isLogin()
              ), // new GestureDetector(
          new Padding(
            padding: EdgeInsets.only(right: 10.0),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
          //   return new Pengajuan();
          // }));
        },
        backgroundColor: Color.fromRGBO(9, 59, 128, 1),
        //if you set mini to true then it will make your floating button small
        mini: false,
        child: new Icon(Icons.add),
      ),

      body: SingleChildScrollView(
        child: new Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: new AssetImage("img/home.png"),
            fit: BoxFit.fitHeight,
          )),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            // Navigator.of(context)
                            //     .push(new MaterialPageRoute(builder: (_) {
                            //   return new ProspekMe(0);
                            // }));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(paddingBoxMenu),
                            decoration: BoxDecoration(
                                color: type1
                                    ? Color.fromRGBO(0, 255, 204, 1)
                                    : Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(13, 71, 178, 1),
                                    blurRadius: 0,
                                    offset: new Offset(0.0, 10.0),
                                  )
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80.0))),
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Daftar Pemohon Sedang Proses",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromRGBO(7, 41, 102, 1),
                                      height: 0.7,
                                      fontSize: textSizeMenu,
                                      fontFamily: "PoppinsBold",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                  ),
                                  new ClipOval(
                                    child: Container(
                                      color: Colors.red,
                                      height:
                                          heightNotification, // height of the button
                                      width: 17.0, // width of the button
                                      child: Center(
                                          child: Text('1',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      fontSizeNotification))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            // Navigator.of(context)
                            //     .push(new MaterialPageRoute(builder: (_) {
                            //   return new Overdistance();
                            // }));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(paddingBoxMenu),
                            decoration: BoxDecoration(
                                color: type2
                                    ? Color.fromRGBO(0, 255, 204, 1)
                                    : Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(13, 71, 178, 1),
                                    blurRadius: 0,
                                    offset: new Offset(0.0, 10.0),
                                  )
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80.0))),
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Daftar Pemohon Selesai Proses",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromRGBO(7, 41, 102, 1),
                                      height: 0.7,
                                      fontSize: textSizeMenu,
                                      fontFamily: "PoppinsBold",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                  ),
                                  new ClipOval(
                                    child: Container(
                                      color: Colors.red,
                                      height:
                                          heightNotification, // height of the button
                                      width:
                                          widthNotification, // width of the button
                                      child: Center(
                                          child: Text('2',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      fontSizeNotification))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Column(
                      children: <Widget>[
                        Text(
                          isSwitched == true ? "Online" : "Offline",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              _showDialog();
                            });
                          },
                          activeTrackColor: Colors.blueAccent,
                          activeColor: Colors.blue,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
