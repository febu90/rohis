import 'package:flutter/material.dart';
import 'package:rohisapp/static/color_loader_3.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static double _minHeight = 20, _maxHeight = 100;
  Offset _offset = Offset(0, _minHeight);
  bool _isOpen = false;
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

  showMenu() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                color: Color(0xff232f34),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 36,
                  ),
                  SizedBox(
                      height: (56 * 6).toDouble(),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                            ),
                            color: Color(0xff344955),
                          ),
                          child: Stack(
                            alignment: Alignment(0, 0),
                            overflow: Overflow.visible,
                            children: <Widget>[
                              Positioned(
                                child: ListView(
                                  physics: NeverScrollableScrollPhysics(),
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons.inbox,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons.inbox,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons.inbox,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons.inbox,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 60.0),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons.inbox,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons.inbox,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons.inbox,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons.inbox,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ))),
                  Container(
                    height: 56,
                    color: Color(0xff4a6572),
                  )
                ],
              ),
            ),
          );
        });
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
        // bottomNavigationBar: BottomAppBar(
        //   elevation: 0,
        //   color: Color(0xff344955),
        //   child: Container(
        //     padding: EdgeInsets.symmetric(horizontal: 10.0),
        //     height: 100.0,
        //     child: Center(
        //       child: Row(children: <Widget>[
        //         Padding(
        //           padding: EdgeInsets.only(left: 30.0),
        //         ),
        //         Icon(
        //           Icons.inbox,
        //           color: Colors.black,
        //         ),
        //         Padding(
        //           padding: EdgeInsets.only(left: 30.0),
        //         ),
        //         Icon(
        //           Icons.inbox,
        //           color: Colors.black,
        //         ),
        //         Padding(
        //           padding: EdgeInsets.only(left: 30.0),
        //         ),
        //         Icon(
        //           Icons.inbox,
        //           color: Colors.black,
        //         ),
        //         Padding(
        //           padding: EdgeInsets.only(left: 30.0),
        //         ),
        //         Icon(
        //           Icons.inbox,
        //           color: Colors.black,
        //         ),
        //         // IconButton(
        //         //   onPressed: showMenu,
        //         //   icon: Icon(Icons.menu),
        //         //   color: Colors.black,
        //         // ),
        //         // Spacer(),
        //         // Row(
        //         //   // crossAxisAlignment: CrossAxisAlignment.start,
        //         //   children: <Widget>[
        //         //     Expanded(
        //         //       flex: 3,
        //         //       child: Column(
        //         //         children: <Widget>[
        //         //           Icon(
        //         //             Icons.inbox,
        //         //             color: Colors.black,
        //         //           ),
        //         //         ],
        //         //       ),
        //         //     ),
        //         //   ],
        //         // ),
        //       ]),
        //     ),
        //   ),
        // ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Align(child: FlutterLogo(size: 300)),
            SingleChildScrollView(
              child: new Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.blueGrey[100]),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 30.0),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 56,
                      padding: EdgeInsets.only(
                          top: 4, left: 16, right: 16, bottom: 4),
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
                        height: 40,
                        padding: EdgeInsets.only(top: 8, left: 176, right: 16),
                        child: new Column(
                          children: <Widget>[
                            new Text("Lupa Password ?",
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 153, 76, 1))),
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
                        height: 38,
                        margin: EdgeInsets.only(top: 18),
                        padding: EdgeInsets.only(top: 4, left: 16, right: 16),
                        child: new Column(
                          children: <Widget>[
                            new Text(
                              "Atau login dengan",
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 153, 76, 1)),
                            ),
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

            GestureDetector(
              onPanUpdate: (details) {
                _offset = Offset(0, _offset.dy - details.delta.dy);
                if (_offset.dy < _LoginState._minHeight) {
                  _offset = Offset(0, _LoginState._minHeight);
                  _isOpen = false;
                } else if (_offset.dy > _LoginState._maxHeight) {
                  _offset = Offset(0, _LoginState._maxHeight);
                  _isOpen = true;
                }
                setState(() {});
              },
              child: AnimatedContainer(
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
                    // border: Border(
                    //   top: new BorderSide(
                    //     color: Colors.green,
                    //     width: 5.0,
                    //     style: BorderStyle.solid,
                    //   ),
                    // ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 10)
                    ]),
                child: new Container(
                  // margin: const EdgeInsets.only(left: 150.0, right: 150.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                          fit: FlexFit.loose,
                          flex: 2,
                          child: new Text("Jenis",
                              style: TextStyle(fontSize: 13.0))),
                      Flexible(
                        flex: 1,
                        child: new Text("      :  "),
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   bottom: 2 * _LoginState._minHeight - _offset.dy - 28, // 56 is the height of FAB so we use here half of it.
              //   child: FloatingActionButton(
              //     child: Icon(_isOpen ? Icons.keyboard_arrow_down : Icons.add),
              //     onPressed: _handleClick,
              //   ),
              // ),
            )
          ],
        ),
      );
    }
  }
}
