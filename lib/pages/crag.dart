import 'package:flutter/material.dart';
import 'package:oblyk/entities/Crag/crag.dart';
import 'package:oblyk/utils/constants.dart';
import 'package:oblyk/utils/cotations.dart';
import 'package:oblyk/utils/translation.dart';

class CragWidget extends StatelessWidget {

  Crag crag;
  BuildContext currentContext;


  CragWidget(this.crag);


  @override
  Widget build(BuildContext context) {
    this.currentContext = context;
    return Scaffold(
      backgroundColor: Color(GREY_LIGHT_COLOR),
        appBar: AppBar(
            title: displayHeader(),
            backgroundColor: Color(HEADER_BACKGROUND_COLOR)
        ),
        body: GridView.count(
          crossAxisCount: 1,
          padding: EdgeInsets.all(5.0),
          childAspectRatio: 10.0 / 4.5,
          children: <Widget>[
            Card(
              shape: Border(
                top: BorderSide(
                  width: 2, color: Color(BLUE_COLOR)
                )
              ),
              child: Column(
                children: <Widget>[
                  getInfoTitle(),
                  displayCity(),
                  displayNumberOfLines(),
                  displayCotations()
                ],
              )
            )
          ],
        )
    );
  }



  Text displayHeader(){
    return Text(this.crag.label, style: TextStyle(fontFamily: FONT_KING, fontSize: 28));
  }


  Padding getInfoTitle(){
    return Padding(
      padding: EdgeInsets.only(
          top: 5,
          left: 5
      ),
      child: Row(
        children: <Widget>[
          Text(Translations.of(currentContext).text('cragInfoTitle'), style: TextStyle(fontFamily: FONT_KING, fontSize: 30)),
        ],
      ),
    );
  }

  Padding displayCity(){
    if(this.crag?.city != null){
      return Padding(
        padding: EdgeInsets.only(
          top: 0,
          left: 10
        ),
        child: Row(
          children: <Widget>[
            Text(Translations.of(currentContext).text('cragInfoCity')),
            Text(this.crag.city, style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
      );
    }
    return Padding();
  }

  Padding displayNumberOfLines(){
    return Padding(
        padding: EdgeInsets.only(
            top: 5,
            left: 10
        ),
        child: Row(
            children: <Widget>[
              Text(this.crag.routes_count.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
              Text(Translations.of(currentContext).text('cragInfoLines'))
            ]
        )
    );
  }

  Padding displayCotations(){
    return Padding(
        padding: EdgeInsets.only(
          top: 5,
          left: 10
        ),
        child: Row(
            children: displayCotation()
        )
    );
  }

  List<Widget> displayCotation(){
    List<Widget> display = [Text(Translations.of(currentContext).text('cragInfoCotations'))];
    if(this.crag?.gap_grade?.min_grade_text?.isNotEmpty && this.crag?.gap_grade?.max_grade_text?.isNotEmpty){
      display.add(Text(Translations.of(currentContext).text('cragInfoFrom')));
      display.add(Text(this.crag.gap_grade.min_grade_text, style: TextStyle(color: Color(getCotationColor(this.crag.gap_grade.min_grade_text)), fontWeight: FontWeight.bold)));
      display.add(Text(Translations.of(currentContext).text('cragInfoTo')));
      display.add(Text(this.crag.gap_grade.max_grade_text, style: TextStyle(color: Color(getCotationColor(this.crag.gap_grade.max_grade_text)), fontWeight: FontWeight.bold)));

    }
    else{
      display.add(Text(Translations.of(currentContext).text('cragInfoUnknown')));
    }
    return display;
  }


}