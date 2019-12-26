
//import 'package:componentes/src/pages/home_temp.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es'), // English
        // ... other locales the app supports
      ],
      //home: HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ){
        print('Ruta LLamada ${settings.name}');

        return MaterialPageRoute(
          builder: (BuildContext context)=> AlertPage()
        );
      },
    );
  }
}