import 'package:flutter/material.dart';
import 'package:oblyk/utils/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:oblyk/widgets/svgWidget.dart';
import 'package:oblyk/widgets/drawer.dart';
import 'map.dart';

class HomeWidget extends State {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
            title: Text('Oblyk', style: TextStyle(fontFamily: FONT_KING, fontSize: 28)),
            backgroundColor: Color(HEADER_BACKGROUND_COLOR),
            leading: Padding(
              padding: EdgeInsets.only(
                left: 10
              ),
              child: new Svg('assets/img/logo-oblyk.svg', 35, 35, onTapLogoCallback),
            )
        ),
        drawer: DrawerMenu(),
        body: new Map()
    );
  }



  void onTapLogoCallback(){
    _scaffoldKey.currentState.openDrawer();
  }

}


class Home extends StatefulWidget {
  @override
  HomeWidget createState() => new HomeWidget();
}