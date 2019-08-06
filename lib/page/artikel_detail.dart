import 'package:flutter/material.dart';

class ArtikelDetail extends StatefulWidget {
  @override
  _ArtikelDetailState createState() => _ArtikelDetailState();
}

class _ArtikelDetailState extends State<ArtikelDetail> {
  bool _isScrollLimitReached = true;
  ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      final newState = _scrollController.offset <=
          (_scrollController.position.minScrollExtent + 120.0);

      if (newState != _isScrollLimitReached) {
        setState(() {
          _isScrollLimitReached = newState;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              primary: true,
              pinned: true,
              backgroundColor: Color.fromRGBO(0, 185, 92, 1),
              flexibleSpace: _flexible(),
            ),
          ];
        },
        body: Column(
          children: <Widget>[
            _titleArtikel(),
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
                    child: Container(
                      child: Text("Artinya: Ya Allah, jadikanlah di hatiku cahaya, di lisanku cahaya, di pendengaranku cahaya, di pandanganku cahaya, di belakangku cahaya, di depanku cahaya, di atasku cahaya, dan di bawahku cahaya. Ya Allah, berilah aku cahaya. (Diriwayatkan oleh Imam Muslim)"),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleArtikel(){
  if(_isScrollLimitReached == true){
    return new Container(
              padding:
                  EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0, bottom: 10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
               color: Color.fromRGBO(0, 185, 92, 1),
              ),
              child: new Text(
                
                "Very long title to test the ellipsis placement on the toolbar",
                
                style: new TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold),
              ),
            );
  }else{
    return Container();
  }
  }

  Widget _flexible(){
    if(_isScrollLimitReached == false){
    return FlexibleSpaceBar(
     
                  title: _isScrollLimitReached
                      ? ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Text(
                            "Very long title to test the ellipsis placement on the toolbar",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      : Text(
                          "Very long title to test the ellipsis placement on the toolbar",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                  collapseMode: CollapseMode.parallax,
                  background: Image.asset(
                    'img/watermark.png',
                    fit: BoxFit.cover,
                  ));
    }else{
      return FlexibleSpaceBar(
                   titlePadding: EdgeInsets.all(0.0),
                  title: _isScrollLimitReached
                      ? ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Text(
                            "",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      : Text(
                          "",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                  collapseMode: CollapseMode.parallax,
                  background: Image.asset(
                    'img/watermark.png',
                    fit: BoxFit.cover,
                  ));
    }
  }
}
