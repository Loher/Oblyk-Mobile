
import 'package:flutter/material.dart';
import 'package:oblyk/widgets/svgWidget.dart';
import 'package:oblyk/utils/constants.dart';

DrawerMenu(){
  return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 80,
            color: Color(DRAWER_BODY_BACKGROUND),
            child: DrawerHeader(
              child: Row(
                children: <Widget>[
                  Image.asset("assets/img/icon-search-user.png", width: 60, height: 60),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15
                    ),
                    child: Text('John Doe', style: TextStyle(color: Color(TEXT_WHITE), fontSize: 18),),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(DRAWER_HEADER_BACKGROUND),
              ),
            ),
          ),
          Container(
            color: Color(DRAWER_BODY_BACKGROUND),
            child: ListTile(
              leading: Image.asset("assets/img/shuffle.png"),
              title: Text("Actualités", style: TextStyle(color: Color(TEXT_WHITE))),
              trailing: Image.asset("assets/img/arrow_left.png", width: 15,),
            ),
          ),
          Container(
            color: Color(DRAWER_BODY_BACKGROUND),
            child: ListTile(
              leading: Image.asset("assets/img/people.png"),
              title: Text("Mes amis", style: TextStyle(color: Color(TEXT_WHITE))),
              trailing: Image.asset("assets/img/arrow_left.png", width: 15,),
            ),
          ),
          Container(
            color: Color(DRAWER_BODY_BACKGROUND),
            child: ListTile(
              leading: Image.asset("assets/img/playlist_add_check.png"),
              title: Text("Croix & Ticklist", style: TextStyle(color: Color(TEXT_WHITE))),
              trailing: Image.asset("assets/img/arrow_left.png", width: 15,),
            ),
          )
        ],
      )
  );
}