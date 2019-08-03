import 'package:flutter/material.dart';
import 'package:rohisapp/launcher/launcher_view.dart';

void main(){
  runApp(
    new MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child,
        );
      },
      debugShowCheckedModeBanner: false,
      title: "LOS",
      home: LauncherPage(),
    )
  );
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}