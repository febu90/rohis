import 'package:flutter/material.dart';
import 'package:rohisapp/page/tab/doa.dart' as doa;
import 'package:rohisapp/page/tab/dzikir.dart' as dzikir;
import 'package:rohisapp/static/color_loader_3.dart';

class DzkirDoa extends StatefulWidget {
  DzkirDoa(this.nomor);
  final int nomor;
  @override
  _DzkirDoaState createState() => _DzkirDoaState();
}

class _DzkirDoaState extends State<DzkirDoa>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController controller;
  // Toggles the password show status

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        new TabController(initialIndex: widget.nomor, length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 0.8,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(0, 153, 76, 1),
        centerTitle: false,
        leading: BackButton(color: Colors.white),
        elevation: 0.0,
        title: Text("Dzikir & Do'a",
            style: TextStyle(
                fontFamily: 'Roboto', color: Colors.white, fontSize: 16.0)),

        bottom: new TabBar(
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 20.0 * MediaQuery.of(context).size.width / 414.0,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelColor: Colors.grey,
          controller: controller,
          tabs: <Widget>[
            Container(
                alignment: Alignment.center,
                child: Text(
                  "Dzikir",
                  style: TextStyle(
                      fontSize:
                          20.0 * MediaQuery.of(context).size.width / 414.0),
                )),
            // new Tab(
            //   text: "Pemohon \n Baru",
            // ),
            new Tab(
              text: "Do'a",
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new dzikir.Dzikir(),
          new doa.Doa(),
        ],
      ),
    );
  }
}
