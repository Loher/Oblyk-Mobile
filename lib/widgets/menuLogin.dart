
import 'package:flutter/material.dart';
import 'package:oblyk/utils/translation.dart';
import 'package:oblyk/utils/constants.dart';
import 'package:oblyk/services/loginService.dart';

class MenuLogin extends Drawer{

  static String login;
  static String password;

  MenuLogin(BuildContext context) : super(
      child: Container(
        color: Color(DRAWER_BODY_BACKGROUND),
        child: ListView(
          children: <Widget>[
            Container(
              child: Text(Translations.of(context).text('connexionTitle'), style: TextStyle(color: Color(TEXT_WHITE), fontFamily: FONT_KING, fontSize: 30)),
              padding: EdgeInsets.all(10),
            ),
            // Login
            Container(
              child: TextField(
                style: TextStyle(color: Color(TEXT_WHITE)),
                onChanged: (text) {
                  login = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: new InputDecoration(
                  labelText: Translations.of(context).text('connexionLogin'),
                  labelStyle: TextStyle(color: Color(TEXT_WHITE)),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 1.0),
                  ),
                ),
              ),
              padding: EdgeInsets.only(
                  bottom: 50,
                  left: 10,
                  right: 10
              ),
            ),
            // Password
            Container(
              child: TextField(
                style: TextStyle(color: Color(TEXT_WHITE)),
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: Translations.of(context).text('connexionPwd'),
                  labelStyle: TextStyle(color: Color(TEXT_WHITE)),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 1.0),
                  ),
                ),
              ),
              padding: EdgeInsets.only(
                  bottom: 50,
                  left: 10,
                  right: 10
              ),
            ),
            Container(
              child: RaisedButton(
                onPressed: (){
                  LoginService.login(login, password);
                },
                color: Color(BLUE_COLOR),
                child: Text(Translations.of(context).text('connexionButton'), style: TextStyle(color: Color(TEXT_WHITE))),
              ),
              padding: EdgeInsets.all(10),
            )
          ],
        ),
      )
  );


}