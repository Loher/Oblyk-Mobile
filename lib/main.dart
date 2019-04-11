import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:oblyk/utils/translation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oblyk',
      localizationsDelegates: [
        const TranslationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('fr', ''),
      ],
      home: new Home(),
    );
  }
}