import 'package:flutter/material.dart';
import 'dart:async';
import 'package:onesignal/onesignal.dart';
import 'package:rohisapp/page/artikel.dart';
import 'package:rohisapp/page/home.dart';
import 'package:rohisapp/page/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  SharedPreferences sharedPreferences;
  bool islogin = false;
  var roleid = "";

  @override
  void initState() {
    super.initState();
    (() async {
      sharedPreferences = await SharedPreferences.getInstance();
      setState(() {
        print(sharedPreferences.getBool("isLogin").toString());
        if (sharedPreferences.getBool("isLogin") != null) {
          islogin = sharedPreferences.getBool("isLogin");
          roleid = sharedPreferences.getString("roleid");
        }
      });
    })();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        if (islogin == false) {
          return new Artikel();
        } else {
          return new Home();
        }
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset(
          "img/logorohis.jpg",
          height: 100.0,
          width: 200.0,
        ),
      ),
    );
  }
}
