import 'package:flutter/material.dart';
import 'package:oblyk/entities/Crag/crag.dart';
import 'package:oblyk/utils/constants.dart';
import 'package:oblyk/utils/translation.dart';
import 'package:oblyk/pages/crag/cragInfo.dart';
import 'package:oblyk/pages/crag/cragSector.dart';
import 'package:oblyk/pages/crag/cragPhoto.dart';

class CragWidget extends State<CragPage> {

  Crag crag;
  BuildContext currentContext;
  int currentMenuIndex = 0;
  List<Widget> bodyWidgets;


  CragWidget(this.crag){
    this.buildBody();
  }


  @override
  Widget build(BuildContext context) {
    this.currentContext = context;
    return Scaffold(
      backgroundColor: Color(GREY_LIGHT_COLOR),
        appBar: AppBar(
            title: displayHeader(),
            backgroundColor: Color(HEADER_BACKGROUND_COLOR)
        ),
        bottomNavigationBar: createNavigationBar(),
        body: this.bodyWidgets[this.currentMenuIndex]
    );
  }


  BottomNavigationBar createNavigationBar(){
    return BottomNavigationBar(
        onTap: switchMenu,
        currentIndex: this.currentMenuIndex,
        fixedColor: Color(HEADER_BACKGROUND_COLOR),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: new Text(Translations.of(currentContext).text('cragMenuInfo')),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.terrain),
            title: new Text(Translations.of(currentContext).text('crag_menu_sector')),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_camera),
            title: new Text(Translations.of(currentContext).text('crag_menu_photo')),
          )
        ]
    );
  }


  Text displayHeader(){
    return Text(this.crag.label, style: TextStyle(fontFamily: FONT_KING, fontSize: 28));
  }
  
  void buildBody(){
    this.bodyWidgets = [
      new CragInfoWidget(this.crag),
      new CragSectorWidget(this.crag),
      new CragPhoto(this.crag)
    ];
  }

  void switchMenu(int index) {
    setState(() {
      this.currentMenuIndex = index;
    });
  }


}


class CragPage extends StatefulWidget {

  Crag crag;


  CragPage(this.crag);

  @override
  State<StatefulWidget> createState() {
    return CragWidget(this.crag);
  }
}