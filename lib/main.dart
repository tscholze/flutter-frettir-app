import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frettir_app/helper/localization.dart';
import 'package:frettir_app/pages/overview_page.dart';
import 'package:frettir_app/helper/theme.dart';

/// Base application widget of the app.
class FrettirApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) => FrettirLocalizations.of(context).get('title'),
      theme: frettirThemeData,
      localizationsDelegates: [
        const FrettirLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('de', ''),
        const Locale('en', ''),
      ],
      home: OverviewPage(),
    );
  }
}

/// Main function.
void main() => runApp(FrettirApp());