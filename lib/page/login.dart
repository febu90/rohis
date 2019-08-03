import 'package:flutter/material.dart';
import 'package:rohisapp/static/color_loader_3.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  TextEditingController controllerEmailLogin = TextEditingController();
  TextEditingController controllerPasswordLogin = TextEditingController();
  var player_id = "";
  bool _loading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    (() async {
      // var status = await OneSignal.shared.getPermissionSubscriptionState();

      setState(() {
        // player_id = status.subscriptionStatus.userId;
      });
    })();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading == true) {
      return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: ColorLoader3(
            radius: 15.0,
            dotRadius: 6.0,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          // elevation: 0.8,
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(0, 153, 76, 1),
          centerTitle: false,
          leading: BackButton(color: Colors.white),
          elevation: 0.0,
          title: Text("Pengaturan",
              style: TextStyle(
                  fontFamily: 'Roboto', color: Colors.white, fontSize: 16.0)),
        ),
        body: SingleChildScrollView(
          child: new Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.blueGrey[100]),
            height: MediaQuery.of(context).size.height,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 60.0),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 56,
                  padding:
                      EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                  child: TextField(
                    controller: controllerEmailLogin,
                    decoration: InputDecoration(
                      // border: InputBorder,
                      hintText: 'Email',
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 58,
                    margin: EdgeInsets.only(top: 32),
                    padding: EdgeInsets.only(top: 4, left: 16, right: 16),
                    child: new Column(
                      children: <Widget>[
                        new TextFormField(
                          controller: controllerPasswordLogin,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            // border: InputBorder.none,
                            hintText: 'Kata Sandi',
                            suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.black,
                                ),
                                onPressed: _toggle),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 58,
                    padding: EdgeInsets.only(top: 4, left: 176, right: 16),
                    child: new Column(
                      children: <Widget>[
                        new Text("Lupa Password ?", style: TextStyle(color: Color.fromRGBO(0, 153, 76, 1))),
                      ],
                    )),
                // Padding(
                //   padding: EdgeInsets.only(bottom: 20.0),
                // ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 153, 76, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            _loading = true;
                          });
                          // _prosesLogin();
                          // Navigator.of(context)
                          //     .pushReplacement(new MaterialPageRoute(builder: (_) {
                          //   return new Home();

                          // }));
                        },
                        child: Center(
                          child: Text("Sign up or Login",
                              style: new TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto",
                              )),
                        )),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 58,
                    margin: EdgeInsets.only(top: 32),
                    padding: EdgeInsets.only(top: 4, left: 16, right: 16),
                    child: new Column(
                      children: <Widget>[
                        new Text("Atau login dengan", style: TextStyle(color: Color.fromRGBO(0, 153, 76, 1)),),
                      ],
                    )),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(40, 93, 240, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            _loading = true;
                          });
                          // _prosesLogin();
                          // Navigator.of(context)
                          //     .pushReplacement(new MaterialPageRoute(builder: (_) {
                          //   return new Home();

                          // }));
                        },
                        child: Center(
                          child: Text("Facebook",
                              style: new TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto",
                              )),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 0, 0, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            _loading = true;
                          });
                          // _prosesLogin();
                          // Navigator.of(context)
                          //     .pushReplacement(new MaterialPageRoute(builder: (_) {
                          //   return new Home();

                          // }));
                        },
                        child: Center(
                          child: Text("Google",
                              style: new TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto",
                              )),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
